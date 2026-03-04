module "vpc" {
  source = "../../modules/networking"

  name        = var.vpc_name
  cidr        = var.cidr
  enable_ipv6 = var.enable_ipv6
}