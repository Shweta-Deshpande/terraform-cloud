# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "random_integer" "number" {
  min = 5
  max = 10000
}
resource "local_file" "hello_file" {
  filename = "hello.txt"
  content  = "Random number: ${random_integer.number.result}"
}