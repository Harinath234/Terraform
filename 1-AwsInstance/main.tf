provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t3.micro"
  key_name = "harikey"

  tags = {
    Name = "testserver"
  }
}