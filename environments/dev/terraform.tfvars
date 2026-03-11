region       = "us-east-1"
environment  = "dev"
project_name = "demo-app-dev"

# VPC module declarations
vpc_name    = "demo_network_dev"
enable_ipv6 = false
cidr        = "192.168.0.0/24"
azs         = ["us-east-1e", "us-east-1f"]
# 192.168.0.0 - 192.168.0.31 || 192.168.0.32 - 192.168.0.63
public_subnets = ["192.168.0.0/27", "192.168.0.32/27"]
# 192.168.0.64 - 192.168.0.95 || 192.168.0.96 - 192.168.0.127
private_subnets = ["192.168.0.64/27", "192.168.0.96/27"]
# 192.168.0.128 - 192.168.0.159 || 192.168.0.160 - 192.168.0.191
database_subnets = ["192.168.0.128/27", "192.168.0.160/27"]
