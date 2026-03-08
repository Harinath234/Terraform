provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "testserver" {
  ami                    = "ami-0c1fe732b5494dc14"
  instance_type          = "t3.micro"
  key_name               = "harikey"
  subnet_id              = "subnet-030f4bf3d2d5d5a7d"
  vpc_security_group_ids = ["sg-016663687f689c3d0"]
  associate_public_ip_address = true
  tags = {
    Name = "test"
  }
}
resource "aws_s3_bucket" "b16-test-bucket-import-1" {
  bucket = "b16-test-bucket-import-1"
}