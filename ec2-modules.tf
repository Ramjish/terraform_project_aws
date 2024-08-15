provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source          = "terraform-aws-modules/ec2-instance/aws"
  version         = "~> 3.0"

  name            = "instance"
  ami             = "ami-0ae8f15ae66fe8cda"  # Replace with your AMI ID
  instance_type   = "t2.micro"
  key_name         = "Ansible.key"  # Replace with your key pair name

  vpc_security_group_ids = [aws_security_group.allow_http.id]
  
  tags = {
    Name = "instance"
  }
}

resource "aws_security_group" "allow_http" {
  name_prefix = "allow_http_"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
