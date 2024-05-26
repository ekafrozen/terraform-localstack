provider "aws" {
  alias                      = "localstack"
  access_key                 = ""
  secret_key                 = ""
  skip_credentials_validation = true
  skip_metadata_api_check    = true
  skip_requesting_account_id = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}
