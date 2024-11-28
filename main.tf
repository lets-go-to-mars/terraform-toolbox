terraform {
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# module "resource_group" {
#     source = "./aws/resource_group"

#     prefix = "${var.resource_prefix}-${var.environment}"
# }
provider "aws" {
  region     = "us-west-2"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}
module "vpc" {
  source = "./aws/vpc"
}