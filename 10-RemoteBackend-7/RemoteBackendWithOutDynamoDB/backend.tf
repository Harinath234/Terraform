
# backend.tf
terraform {
  required_version = ">= 1.11.0"

  backend "s3" {
    bucket       = "s3-b16-statefile-1324"
    key          = "batch16/state.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true   # <- S3-native state locking (no DynamoDB)
  }
}

