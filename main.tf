terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
  organization_name = "sfsenorthamerica"
  account_name = "demo_aervits"
  authenticator = "SNOWFLAKE_JWT"
  user = "tf-snow"
  role = "SYSADMIN"
  warehouse = "compute_wh"
  #preview_features_enabled = ["snowflake_password_policy_resource"]
}
