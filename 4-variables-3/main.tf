
resource "aws_instance" "lab" {

    ami  = var.ami
    instance_type = var.instance_type
    key_name = var.key_value

    tags = {
      Name = var.instance_env
    }
  
}