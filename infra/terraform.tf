# Defines the required Terraform and AWS provider versions

 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.21.0"
    }
  }
}

 required_version = ">= 1.5.7"
}