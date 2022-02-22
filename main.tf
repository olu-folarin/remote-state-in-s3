// insert the s3 bucket config here
terraform {
  // name of the backend -- s3
  backend "s3" {
    bucket = "dev-applications-backend-state-olufolarin"
    key = "${var.application_name}-${var.project_name}-${var.project_environment}"
    region = "us-east-1"
    dynamodb_table = "dev_application_locks"
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