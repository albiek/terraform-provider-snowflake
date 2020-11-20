#provider "snowflake" {
#  account = "aaa99406"
#  region  = "us-west-2"
#}

terraform {
  required_version = ">= 0.13"

  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.15.0"
    }
  }
}

provider "snowflake" {
  account = "aaa99406"
  region = "us-west-2"
}
