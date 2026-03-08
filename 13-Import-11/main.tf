provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "testserver" {
  # (resource arguments)
  ami = "ami-0c1fe732b5494dc14"
  instance_type = "t3.micro"
   tags = {
        "Name" = "test"
   }
}
resource "aws_s3_bucket" "b16-test-bucket-import-1" {
  bucket = "b16-test-bucket-import-1"
}

