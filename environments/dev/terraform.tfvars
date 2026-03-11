region       = "us-east-1"
environment  = "dev"
project_name = "demo-app-dev"

# VPC module declarations
vpc_name    = "demo_network_dev"
enable_ipv6 = false
cidr        = "192.168.0.0/24"
azs         = ["us-east-1e", "us-east-1f"]

# Non-overlapping CIDR blocks within 192.168.0.0/24
# Public subnets (2 AZs)
public_subnets = [
  "192.168.0.0/26",  # 192.168.0.0   - 192.168.0.63
  "192.168.0.64/26", # 192.168.0.64  - 192.168.0.127
]

# Private subnets (2 AZs)
private_subnets = [
  "192.168.0.128/27", # 192.168.0.128 - 192.168.0.159
  "192.168.0.160/27", # 192.168.0.160 - 192.168.0.191
]

# Database subnets (2 AZs)
database_subnets = [
  "192.168.0.192/27", # 192.168.0.192 - 192.168.0.223
  "192.168.0.224/27", # 192.168.0.224 - 192.168.0.255
]
