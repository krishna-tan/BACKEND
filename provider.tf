terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }
backend "s3" {
    bucket = "krishna-terraform-lock-mum"
    key    = "session-05"
    region = "ap-south-1"
    dynamodb_table = "timing-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
  
}