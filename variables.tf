variable "site_domain" {
  default = "guselietov.com"
}

variable "site_record" {
  default = "tf-repo-mirror-1"
}

variable "region" {
  default = "eu-central-1"
}

variable "availabilityZone" {
  default = "eu-central-1a"
}

# Below are sane defaults

variable "region_vpcCIDRblock" {
  default = "10.1.0.0/16"
}

variable "region_subnetCIDRblock" {  
  default = "10.1.0.0/24"
}

variable "ubuntu_account_number" {
  default = "099720109477"
}

variable "testname" {
  default = "agtest"
}

variable "tag" {
  default = "guselietov_test_3"
}

variable "instance_type" {
  default = "m5.large"
}

variable "ssh_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "mirror_path" {
  default = "mirror-content"
}