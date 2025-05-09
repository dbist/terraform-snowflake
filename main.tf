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
  role = "SYSADMIN"
  warehouse = "**********"
  preview_features_enabled = ["snowflake_password_policy_resource", "snowflake_user_password_policy_attachment_resource"]
}
