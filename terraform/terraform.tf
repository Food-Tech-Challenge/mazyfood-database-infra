terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }
  }

  required_version = ">= 1.10"

  backend "s3" {
    key = "mazyfood-database-infra/terraform.tfstate"
  }
}