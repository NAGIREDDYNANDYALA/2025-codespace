provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "backend" {
  bucket = "terraform-backend-s3-9036"
  tags = {
    Name = "S3-Backend"
  }
}

# backend configuration
terraform {
  backend "s3" {
    bucket = "terraform-backend-s3-9036"
    key = "terraform/statefile"
    region = "eu-west-1"
    encrypt = true
    #dynamodb_table = "s3-remote-DB"
  }
}
