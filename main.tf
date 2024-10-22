terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.97"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
}
