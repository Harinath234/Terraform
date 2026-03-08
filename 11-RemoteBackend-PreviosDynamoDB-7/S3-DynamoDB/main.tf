
provider "aws" {
  
  region = "us-east-1"
}

resource "aws_s3_bucket" "b16-s3-bucket" {

  bucket = "b16-s3-bucket" 

  tags = {
    Name        = "b16-s3-bucket"
    
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}