provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
