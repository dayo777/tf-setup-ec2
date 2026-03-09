# This module handles the networking component.
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.6.0"

  name        = var.name
  cidr        = var.cidr
  enable_ipv6 = var.enable_ipv6

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  # for RDS, DynamoDB is serverlesss & does not use subnets
  database_subnets             = var.database_subnets
  create_database_subnet_group = true
}