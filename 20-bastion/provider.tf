terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "manohar-remote-state"
    key    = "expense-bastion-cicd"
    region = "us-east-1"
    dynamodb_table = "remote-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}