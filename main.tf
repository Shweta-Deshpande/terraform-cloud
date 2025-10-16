# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}
resource "random_integer" "number" {
  min = 1
  max = 10000
}
resource "local_file" "hello_file" {
  filename = "hello.txt"
  content  = "Random number: ${random_integer.number.result}"
}
