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


# Instance
/* resource "aws_instance" "ptfe" {
  ami                    = var.amis[var.region]
  instance_type          = "${var.instance_type}"
  subnet_id              = "${module.vpc_aws.subnet_id}"
  vpc_security_group_ids = ["${module.vpc_aws.security_group_id}"]
  key_name               = "${aws_key_pair.ptfe-key.id}"

  root_block_device {
    volume_size = 40
  }

  tags = {
    "Name"      = "ptfe-prodmount-2-andrii",
    "andriitag" = "true",
    "learntag"  = "${var.learntag}"
  }

  volume_tags = {
    "Name"      = "ptfe-prodmount-2-andrii",
    "andriitag" = "true",
  }

  connection {
    user        = "ubuntu"
    type        = "ssh"
    private_key = "${file("~/.ssh/id_rsa")}"
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    script = "scripts/provision.sh"
  }

  provisioner "file" {
    source      = "scripts/mount-ebs.sh"
    destination = "/tmp/mount-ebs.sh"
  }

  provisioner "file" {
    source      = "scripts/delete_all.sh"
    destination = "/tmp/delete_all.sh"
  }

}

*/
