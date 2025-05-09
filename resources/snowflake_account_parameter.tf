# requires ACCOUNTADMIN role

resource "snowflake_account_parameter" "autocommit_parameter" {
  key   = "AUTOCOMMIT"
  value = "true"
}

output "snowflake_account_parameter" {
  description = "Example account parameter for AUTOCOMMIT"
  value = snowflake_account_parameter.autocommit_parameter
}
