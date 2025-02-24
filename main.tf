terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 1.0.3"
    }
  }
}

provider "snowflake" {
  #snowflake_organization_name = var.snowflake_organization_name
  #snowflake_account_name = var.snowflake_account_name
  role = "SYSADMIN"
  warehouse = "compute_wh"
}
