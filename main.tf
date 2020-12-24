# Only computing resources are here

# SSH key for provision
resource "aws_key_pair" "ptfe-key" {
  key_name   = "ptfe-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

# Get the AMI in region 1
data "aws_ami" "ubuntu-18_04" {
  most_recent = true
  owners      = [var.ubuntu_account_number]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}


# Nginx
module "nginxweb" {
  #source                = "github.com/Galser/tf-nginx-module"
  source                = "./modules/tf-nginx-module"

  max_web_servers       = 1

  ami                   = data.aws_ami.ubuntu-18_04.id
  instance_type         = var.instance_type
  
  vpc_security_group_id = module.vpc_aws.security_group_id
  subnet_id       = module.vpc_aws.subnet_id

/*  key_name        = module.sshkey_aws_region1.key_id
  key_path        = var.ssh_key_path
*/
}


# Create local mirror
resource "null_resource" "make_providers_local_mirror" {
  triggers = {
    instances_ids = join(",",module.nginxweb.id.*)
  }
  provisioner "local-exec" {
    command = "mkdir -p ${var.mirror_path};  terraform providers mirror ${var.mirror_path}"
  }
}

# Chown WWW folder to ubuntu
resource "null_resource" "prepare_folder" {
  triggers = {
    instances_ids = join(",",module.nginxweb.id.*)
  }

  connection {
    user        = "ubuntu"
    type        = "ssh"
    private_key = file("~/.ssh/id_rsa")
    host        = element(module.nginxweb.public_ips.*,0)
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chown -R ubuntu:ubuntu /var/www/html",
    ]   
  }

}

# Copy fiels over SSH (scp really)
resource "null_resource" "copy_mirror_to_server" {
  triggers = {
    instances_ids = join(",",module.nginxweb.id.*)
  }

  # explicit depends on local mirror
  depends_on = [ 
    null_resource.make_providers_local_mirror,
    null_resource.prepare_folder
  ]

  connection {
    user        = "ubuntu"
    type        = "ssh"
    private_key = file("~/.ssh/id_rsa")
    host        = element(module.nginxweb.public_ips.*,0)
  }

  provisioner "file" {
    source = "${var.mirror_path}/"
    destination = "/var/www/html"
  }

}
