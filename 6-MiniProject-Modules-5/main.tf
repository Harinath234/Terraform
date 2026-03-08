module "server" {
  source = "./ec2_instance_module"

ami = "ami-0532be01f26a3de55"
key_name = "harikey"
instance_type = "t2.micro"

server_env = "test-server"



}