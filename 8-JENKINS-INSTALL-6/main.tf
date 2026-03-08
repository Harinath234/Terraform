# Define the AWS provider configuration.
provider "aws" {
  region = "us-east-1"  

}

variable "cidr" {
  default = "10.81.0.0/16"
}


resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr
  instance_tenancy = "default"

   tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.81.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "sub1"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.RT.id
}

resource "aws_security_group" "b16Sg" {
  name   = "b16Sg"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "http"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "b15-Sg"
  }
}


resource "aws_instance" "jenkins-server" {
  ami = "ami-084a7d336e816906b"
  instance_type = "t2.micro"
  key_name = "harikey"
  vpc_security_group_ids = [aws_security_group.b16Sg.id]
  subnet_id              = aws_subnet.sub1.id

   provisioner "local-exec" {
    command = "echo 'hello batch16 champs' > batch16.txt"
  }
   
   connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("C:/Users/teluk/OneDrive/Desktop/Keys/harikey.pem") 
    host        = self.public_ip 
          }


   provisioner "remote-exec" {
   inline = [
    "sudo yum update -y" ,
    "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/rpm-stable/jenkins.repo",

    "sudo rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key",

     "sudo yum upgrade -y",
     "sudo yum install java-21-amazon-corretto -y",
     "sudo yum install jenkins -y",
     "sudo systemctl enable jenkins",
     "sudo systemctl start jenkins",
     "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
    ] 

  }
  tags = {
    Name = "JENKINS-SERVER"
  }

   }


   output "name" {
     value = aws_instance.jenkins-server.public_ip
   }