terraform {
  backend "s3" {
    bucket         = "demo-state-files"
    key            = "us-east-1/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-dev-locks"
    encrypt        = true
  }
}

# command to create the DynamoDB
# aws dynamodb create-table \
#   --table-name terraform-dev-locks \
#   --attribute-definitions AttributeName=LockID,AttributeType=S \
#   --key-schema AttributeName=LockID,KeyType=HASH \
#   --billing-mode PAY_PER_REQUEST \
#   --region us-east-1