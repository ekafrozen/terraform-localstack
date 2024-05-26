provider "aws" {
  region = "eu-central-1"
  access_key = "fake"
  secret_key = "fake"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-name"
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}
