terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.34.0"
    }
  }
}

provider "aws" {
  region = var.region
  alias  = "demo-useast1"

  default_tags {
    tags = {
      Environment = var.environment
      Project     = var.project_name
    }
  }
}
