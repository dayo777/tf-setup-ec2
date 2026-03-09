region       = "us-east-1"
environment  = "dev"
project_name = "demo-app-dev"

# VPC module declarations
vpc_name        = "demo_network_dev"
enable_ipv6     = false
cidr            = "192.168.0.0/24"
azs             = ["us-east-1e", "us-east-1f"]
private_subnets = ["192.168.0.0/25"]   # 192.168.0.0 - 192.168.0.127
public_subnets  = ["192.168.0.128/25"] # 192.168.0.128 - 192.168.0.255
# 192.168.0.1 - 192.168.0.30 || 192.168.0.33 - 192.168.0.62
database_subnets = ["192.168.0.0/27", "192.168.0.32/27"]
