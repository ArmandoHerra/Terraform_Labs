terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-04b9e92b5572fa0d1"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}