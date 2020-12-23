# Network : AWS VPC
module "vpc_aws" {
  source = "./modules/vpc_aws"

#  region           = var.region
#  availabilityZone = var.availabilityZone
  vpcCIDRblock = var.region_vpcCIDRblock
  subnetCIDRblock = var.region_subnetCIDRblock

  tag              = var.tag
}
