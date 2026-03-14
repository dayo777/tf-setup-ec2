region       = "us-east-1"
environment  = "dev"
project_name = "demo-app-dev"

# VPC module declarations
vpc_name    = "demo_network_dev"
enable_ipv6 = false
cidr        = "192.168.0.0/16"
azs         = ["us-east-1e", "us-east-1f"]
# 192.168.1.1 - 192.168.1.254 || 192.168.2.1 - 192.168.2.254
public_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
# 192.168.10.1 - 192.168.10.254 || 192.168.11.1 - 192.168.11.254
private_subnets = ["192.168.10.0/24", "192.168.11.0/24"]
# 192.168.20.1 - 192.168.20.254 || 192.168.21.1 - 192.168.21.254
database_subnets = ["192.168.20.0/24", "192.168.21.0/24"]
