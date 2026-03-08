# provider
provider "aws" {
  region = "us-east-1"
}

# S3 bucket for backend
resource "aws_s3_bucket" "tf_state" {
  bucket = "s3-b16-statefile-1324" # must be globally unique

  tags = {
    Name        = "s3-b16-statefile-1324"
   
  }
}

# Enable versioning to keep state history
resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.tf_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Optional: block public access
resource "aws_s3_bucket_public_access_block" "tf_state_block" {
  bucket                  = aws_s3_bucket.tf_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
