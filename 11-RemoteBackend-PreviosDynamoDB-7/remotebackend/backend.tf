terraform {
  backend "s3" {
    bucket         = "b16-s3-bucket" 
    key            = "batch16/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
} 