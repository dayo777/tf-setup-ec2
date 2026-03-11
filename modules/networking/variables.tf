variable "name" {
  type        = string
  description = "The name for this VPC"
}

variable "cidr" {
  type        = string
  description = "This is the IP address range for this VPC."
}

variable "enable_ipv6" {
  type        = bool
  description = "Whether to enable IPv6 for this VPC"
}

variable "azs" {
  type        = list(string)
  description = "These are the availability zones for this VPC"
}

variable "private_subnets" {
  type        = list(string)
  description = "the private subnets in the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "the public subnets in the VPC"
}

variable "database_subnets" {
  type        = list(string)
  description = "cidr blocks for database subnets in the vpc"
}