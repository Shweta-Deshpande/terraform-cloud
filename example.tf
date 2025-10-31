# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "example_file" {
  content  = "Hello, Terraform Local Provider!"
  filename = "example.txt"
}

resource "local_exec" "example_command" {
  command = "echo 'This command was executed by Terraform local_exec.'"
}

output "file_content" {
  value = local_file.example_file.content
}

output "file_path" {
  value = local_file.example_file.filename
}