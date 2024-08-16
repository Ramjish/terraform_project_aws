provider "aws" {
  region = "us-east-1"  # Specify your region here
}

resource "aws_s3_bucket" "ram_bucket" {
  bucket = "ram-bucket-new116"
}
