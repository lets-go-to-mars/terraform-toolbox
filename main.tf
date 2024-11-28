terraform {
  cloud {
    organization = "lets-go-to-mars"

    workspaces {
      name = "hackathon-dev"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

module "resource_group" {
    source = "./aws/resource_group"

    prefix = "${var.resource_prefix}-${var.environment}"
}

module "vpc" {
  source = "./aws/vpc"
}