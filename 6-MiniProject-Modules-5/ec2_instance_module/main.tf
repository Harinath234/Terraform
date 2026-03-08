

 # Create an ec2  server 

 resource "aws_instance" "prod_server" {
   
   ami = var.ami
   instance_type = var.instance_type
   key_name = var.key_name
   
   tags = {
    Name = var.server_env
    }
 }


