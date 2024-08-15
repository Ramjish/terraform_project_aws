provider "aws" {
}

resource "aws_instance" "myec2" {
  ami = "ami-0ae8f15ae66fe8cda"

  for_each = {
    key1 = "t2.micro"
    key2 = "t2.medium"
  }
  instance_type = each.value
  key_name      = each.key
  tags = {
    name = each.value
  }

}
