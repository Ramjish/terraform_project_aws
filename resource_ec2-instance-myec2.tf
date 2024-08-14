provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "myec2" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"

  tags = {
    Name = "helloEarth"
  }

  lifecycle {
    create_before_destroy = true
  }
}