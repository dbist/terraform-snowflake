terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
  organization_name = "**********"
  account_name = "**********"
  authenticator = "**********"
  user = "**********"
  role = "**********"
  warehouse = "**********"
  #preview_features_enabled = ["snowflake_password_policy_resource"]
}
