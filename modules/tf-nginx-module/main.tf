# Module that deploys AWS instance and provision NGinx web server 
# Require AMazon provider define and assumes tsanbdard location fro SSH key in RSA cipher
# (RSA is required due to Amazon keyt import function limitations)

resource "aws_key_pair" "tf200-nginxweb-key" {
  key_name = "tf200-nginxweb-key"
  public_key =  "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_instance" "nginxweb" {
  count = "${var.max_web_servers}"
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${var.subnet_id}" 
  vpc_security_group_ids = ["${var.vpc_security_group_id}"]
  key_name              = "${aws_key_pair.tf200-nginxweb-key.id}"
  associate_public_ip_address = true

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install -y nginx",
      "sudo ufw allow 'Nginx HTTP'"
    ]

    connection {
        user = "ubuntu"
        type = "ssh"
        private_key = "${file("~/.ssh/id_rsa")}"
        host = "${self.public_ip}"
    }
  }
  tags = {
    "Name"      = "web ${count.index} / ${var.max_web_servers}",
    "andriitag" = "true",
  }
}

