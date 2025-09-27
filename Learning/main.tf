terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.13.0"
    }
  }
}
data "aws_ami_ids" "ubuntu" {
  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket-kannan-rt"
}
provider "aws" {
  region = local.region
}
variable "demo_ami" {
  description = "just for demo"
}
locals {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.demo_ami
  instance_type = "t3.micro"
  region        = local.region
  tags = {
    Name = "HelloWorld"
  }
}