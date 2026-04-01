# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "random_integer" "number1" {
  min = 1
  max = 10000
}
resource "local_file" "hello_file1" {
  filename = "hello.txt"
  content  = "Random number: ${random_integer.number1.result}"
}