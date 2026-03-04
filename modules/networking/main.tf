# This module handles the networking component.
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.6.0"
}