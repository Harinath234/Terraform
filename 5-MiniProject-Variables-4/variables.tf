 

 variable "vpc_cidr" {
   
   default = "10.81.0.0/16"
 }

 variable "subnet_cidr" {
   
    default = "10.81.3.0/24"
 }

 variable "nic_pvtip" {
   

   default =  ["10.81.3.33"]
 }

 variable "eip_nic_pvtip_association" {
   

   default = "10.81.3.33"
 
 }

 variable "ami" {
   
   default = "ami-0532be01f26a3de55"

 }

 variable "instance_type" {
   
   default = "t2.micro"

 }

 variable "key_name" {
   default = "harikey"
 }


 variable "server_env" {
   default = "test-server"
 }