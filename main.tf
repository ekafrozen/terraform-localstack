provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
}


