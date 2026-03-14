# module "vpc" {
#   source = "../../modules/networking"
#
#   name        = var.vpc_name
#   cidr        = var.cidr
#   enable_ipv6 = var.enable_ipv6
#
#   azs             = var.azs
#   private_subnets = var.private_subnets
#   public_subnets  = var.public_subnets
#
#   database_subnets = var.database_subnets
# }