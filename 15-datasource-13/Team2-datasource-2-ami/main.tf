provider "aws" {  
  region = "us-east-1"
}
### get the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["137112412989"] 
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
}
}
resource "aws_instance" "sbox" {
   ami = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"
    key_name = "harikey"
tags = {
  Name = "pre-prod"
}
}