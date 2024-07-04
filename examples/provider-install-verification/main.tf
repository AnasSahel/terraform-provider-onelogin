terraform {
  required_providers {
    onelogin = {
      source = "hashicorp.com/dev/onelogin"
    }
  }
}

provider "onelogin" {}

data "onelogin_users" "example" {}
