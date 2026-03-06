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