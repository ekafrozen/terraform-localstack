provider "aws" {
  alias                      = "localstack"
  access_key                 = "fake"
  secret_key                 = "fake"
  region                     = "eu-central-1"
  skip_credentials_validation = true
  skip_metadata_api_check    = true
  skip_requesting_account_id = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.60.0, <= 4.22.0"
    }
  }
}
