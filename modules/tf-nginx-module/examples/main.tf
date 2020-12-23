# Example of usage of nginxweb module
module "nginxweb" {
  source                = "github.com/Galser/tf-nginx-module"

  ami                   = var.amis[var.region]
  instance_type         = var.instance_type
  subnet_id             = var.subnet_ids[var.region]
  vpc_security_group_id = var.vpc_security_group_ids[var.region]
  
}