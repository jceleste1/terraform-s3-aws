terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["c:/Users/mbra/.aws/config"]
  shared_credentials_files = ["c:/Users/mbra/.aws/credentials"]
  profile                  = "default"            
  region                   = "us-east-1"
}


resource "aws_s3_bucket" "d" {
  bucket = "buckedzzz11a"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Projeto     = "Terraform Project"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.d.id
  acl    = "private"
}


