provider "aws" {

}
resource "aws_instance" "myec2" {
  ami           = "ami-0ba9883b710b05ac6"
  instance_type = "t2.micro"
  count         = 10

  tags = {
    Name = "payment-systems-${count.index}"
  }

}

resource "aws_iam_user" "this" {
  name  = "payment-user-${count.index}"
  count = 3


}

