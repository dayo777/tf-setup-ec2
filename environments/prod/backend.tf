terraform {
  backend "s3" {
    bucket         = "demo-state-files"
    key            = "us-east-1/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-prod-locks"
    encrypt        = true
  }
}

# command to create the DynamoDB
# aws dynamodb create-table \
#   --table-name terraform-prod-locks \
#   --attribute-definitions AttributeName=LockID,AttributeType=S \
#   --key-schema AttributeName=LockID,KeyType=HASH \
#   --billing-mode PAY_PER_REQUEST \
#   --region us-east-1