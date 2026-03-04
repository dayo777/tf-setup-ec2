variable "name" {
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