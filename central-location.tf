variable "vpn_ip" {
    default = "172.31.0.0/16" 
}


variable "app_port" {
    default = "8080" 
}


variable "ssh_port" {

    default = "22" 
}


variable "ftp_port" {
    default = "21" 
}

variable "ami" {
default = "ami-0ba9883b710b05ac6"
description = "This AMI is for Mumbai region"
  
}