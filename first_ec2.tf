provider "aws" {
  region     = "ap-south-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"

    tags = {
      name = "my-first-ec2"
    }