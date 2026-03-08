
provider "aws" {
  region = "us-east-1"
  alias = "nv"
}

provider "aws" {
  region = "ap-south-1"
  alias = "mumbai"
}

resource "aws_instance" "server1-nv" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t3.micro"
  key_name = "harikey"
  count = 1
  provider = aws.nv

  tags = {
    Name = "server1-nv"
  }
}

resource "aws_instance" "server1-mumbai" {
  ami           = "ami-0ff5003538b60d5ec"
  instance_type = "t3.micro"
  key_name = "mumbaikey"
  count = 1
  provider = aws.mumbai

  tags = {
    Name = "server1-mumbai"
  }
}