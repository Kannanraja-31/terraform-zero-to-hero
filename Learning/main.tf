terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.13.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
variable "demo_ami" {
  description = "just for demo"
}

resource "aws_instance" "example" {
  ami           = var.demo_ami
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}