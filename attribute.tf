provider "aws" {
  region = "us-east-1"

}

resource "aws_eip" "lb" {
  domain = "vpc"

}

resource "aws_instance" "web" {
  ami           = "ami-03972092c42e8c0ca"
  instance_type = "t2.micro"

}