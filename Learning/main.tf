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
locals {
  region="us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.demo_ami
  instance_type = "t3.micro"
  region = local.region
  tags = {
    Name = "HelloWorld"
  }
}