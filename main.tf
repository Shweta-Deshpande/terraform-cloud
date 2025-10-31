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
  min = 5
  max = 10000
}
resource "local_file" "hello_file" {
  filename = "hello.txt"
  content  = "Random number: ${random_integer.number.result}"
}

resource "null_resource" "test19" {
}

data "external" "slow_delay" {
  program = ["bash", "-c", <<EOT
    sleep 60
    echo '{ "result": "done" }'
EOT
  ]
}

output "delay_result" {
  value = data.external.slow_delay.result
}

