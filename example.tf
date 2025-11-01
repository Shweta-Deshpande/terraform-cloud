# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "local_file" "example_file" {
  content  = "Hello, Terraform Local Provider!"
  filename = "example.txt"
}

output "file_content" {
  value = local_file.example_file.content
}

output "file_path" {
  value = local_file.example_file.filename
}