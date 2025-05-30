# Configure the Local provider
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {
  # No configuration needed
}

# Create a local file
resource "local_file" "demo_file" {
  filename = "${path.module}/demo-${var.file_suffix}.txt"
  content  = "This file was created by Terraform at ${timestamp()}"
}
resource "null_resource" "mkdir" {
  provisioner "local-exec" {
    command = "mkdir -p ${path.module}/demo_dir"
  }
}


