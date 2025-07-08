terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

resource "random_integer" "sample_number" {
  min = 1
  max = 100
  keepers = {
    name = var.waypoint_application
  }
}
