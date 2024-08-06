variable "environment" {
    default = "development"
  
}

resource "aws_instance" "myec2" {
  ami = "ami-0ba9883b710b05ac6"
  instance_type = var.environment == "evelopment" ? "t2.micero" : "m5.large"
}