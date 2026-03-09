variable "region" {
  type        = string
  description = "This is the AWS region where resources are deployed to."
}

variable "environment" {
  type        = string
  description = "This indicates the stage of development e.g. dev, UAT, prod etc."
}

variable "project_name" {
  type        = string
  description = "This is the name of the project for tagging purposes"
}

# declare VPC variables here
variable "vpc_name" {
  type        = string
  description = "The name for this VPC"
}

variable "cidr" {
  type        = string
  description = "This is the IP address range for this VPC."
}

variable "enable_ipv6" {
  type        = string
  description = "Whether to enable IPv6 for this VPC"
}

variable "azs" {
  type        = list(string)
  description = "These are the availability zones used in this VPC region."
}

variable "public_subnets" {
  type        = list(string)
  description = "public subnets available inside this vpc region"
}

variable "private_subnets" {
  type        = list(string)
  description = "private subnets available in this vpc region"
}

variable "database_subnets" {
  type        = list(string)
  description = "database subnets for this environment"
}