resource "aws_s3_bucket" "my_bucket" {
  provider = aws.localstack
  bucket = "my-bucket-name"
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  provider = aws.localstack
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}
