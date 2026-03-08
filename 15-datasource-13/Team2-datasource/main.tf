provider "aws" {  
  region = "us-east-1"
}
data "aws_route53_zone" "primary" { 
  name = "b16terraform.com"
}
resource "aws_route53_record" "testrecord" {
zone_id = data.aws_route53_zone.primary.id
# zone_id = "Z057502533HTJGV25SKEG"
      name    = "login"
      type    = "A"
      ttl     = 300
      records = ["10.82.0.0"] 
    }