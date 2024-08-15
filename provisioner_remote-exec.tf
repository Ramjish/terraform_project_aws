provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "provisioner-ec2" {
  ami           = "ami-0ae8f15ae66fe8cda"  # Replace ami ID
  instance_type = "t2.micro"
  key_name = "Ansible.key"
  vpc_security_group_ids = ["sg-06fe66d78bda6be5d"]

  
  tags = {
    Name = "example-instance"
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./Ansible.key.pem")
    host     = self.public_ip
  }


  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
    
  }
}


