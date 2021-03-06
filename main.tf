
// insert the s3 bucket config here
terraform {
  // name of the backend -- s3
  backend "s3" {
    bucket         = "dev-applications-backend-state-olufolarin"
    // key            = "backend-tf-rs-s3-backend-dev"
    key            = "dev/backend/tf-rs-s3-backend/backend-state"
    region         = "us-east-1"
    dynamodb_table = "dev_application_locks"
    encrypt        = true
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