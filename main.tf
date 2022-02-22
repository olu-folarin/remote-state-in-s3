// insert the s3 bucket config here
terraform {
  // name of the backend -- s3
  backend "s3" {
    bucket = 
    key = 
    region = 
    dynamodb_table = 
    encryption = 
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
}