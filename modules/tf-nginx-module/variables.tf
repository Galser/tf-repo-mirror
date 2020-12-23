# Variables for Nginxweb , demo module
variable "ami" {}
variable "subnet_id" {}
variable "instance_type" {}
variable "vpc_security_group_id" { }
variable "max_web_servers" {
  default = "3"
}
