provider "aws" {  
  region = "us-east-1"
}
resource "aws_route53_zone" "primary" {
  name = "b16terraform.com"
}
resource "aws_route53_record" "prodrecord" {
     zone_id = aws_route53_zone.primary.id
    # zone_id = "Z057502533HTJGV25SKEG"
      name    = "logout"
      type    = "CNAME"
      ttl     = 300
      records = ["10.83.0.0"] 
}