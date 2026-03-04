# AWS Infrastructure Setup with Terraform

This project provides a modular approach to deploying infrastructure on AWS using Terraform. It includes configurations for setting up a Virtual Private Cloud (VPC), EC2 servers, databases, and other essential components.

The project is structured to support multiple environments (e.g., development and production) while maintaining reusable components through custom modules.

## Infrastructure Components

- **VPC (Virtual Private Cloud):** A secure and isolated network environment configured with public and private subnets, internet gateways, and NAT gateways.
- **Servers (EC2 Instances):** Virtual servers deployed within the VPC for application hosting and other compute needs.
- **Databases (RDS/Aurora):** Managed database services to provide reliable data storage for the applications.
- **Modular Design:** Using custom modules to ensure code reusability and maintainability.

## Project Structure

The project follows a standard Terraform layout:

```text
aws-setup-ec2/
├── environments/               # Environment-specific configurations
│   ├── dev/                    # Development environment
│   │   ├── backend.tf          # Configures Terraform backend for dev
│   │   ├── main.tf             # Main infrastructure definitions for dev
│   │   ├── outputs.tf          # Outputs defined for the dev environment
│   │   ├── providers.tf        # AWS provider configuration for dev
│   │   ├── terraform.tfvars    # Input values for dev-specific variables
│   │   └── variables.tf        # Variable definitions for dev environment
│   └── prod/                   # Production environment
│       ├── backend.tf          # Configures Terraform backend for prod
│       ├── main.tf             # Main infrastructure definitions for prod
│       ├── outputs.tf          # Outputs defined for the prod environment
│       ├── terraform.tfvars    # Input values for prod-specific variables
│       └── variables.tf        # Variable definitions for prod environment
├── modules/                    # Reusable infrastructure modules
│   ├── compute/                # EC2 instances and auto-scaling groups
│   │   ├── main.tf             # Resource definitions for compute
│   │   ├── outputs.tf          # Module outputs
│   │   └── variables.tf        # Module input variables
│   ├── database/               # RDS and database-related resources
│   │   ├── main.tf             # Resource definitions for databases
│   │   ├── outputs.tf          # Module outputs
│   │   └── variables.tf        # Module input variables
│   └── networking/             # VPC, subnets, and routing configurations
│       ├── main.tf             # Resource definitions for networking
│       ├── outputs.tf          # Module outputs
│       └── variables.tf        # Module input variables
├── scripts/                    # Utility scripts for development
│   └── create_module_structure.py # Python script to automate module creation
├── README.md                   # Project documentation
└── .gitignore                  # Specifies files for Git to ignore
```

## Modules Overview

- **`modules/networking`**: Responsible for the foundational network architecture, including VPC, subnets, and routing. It leverages the community `terraform-aws-modules/vpc/aws`.
- **`modules/compute`**: Handles the provisioning and management of EC2 instances and security groups.
- **`modules/database`**: Configures database instances such as Amazon RDS for structured data storage.

## Usage

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed locally.
- AWS credentials configured (via `aws configure` or environment variables).

### Steps to Deploy

1. **Navigate to the environment directory:**
   ```bash
   cd environments/dev
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Plan the infrastructure:**
   ```bash
   terraform plan
   ```

4. **Apply the changes:**
   ```bash
   terraform apply
   ```

## Author

This project was created to demonstrate AWS infrastructure automation with Terraform.
