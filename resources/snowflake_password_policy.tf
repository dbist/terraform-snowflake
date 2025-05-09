# requires database and schema to exist

resource "snowflake_password_policy" "test14chars" {
  database = "DEMO"
  schema   = "DEMO_SCHEMA"
  name     = "test14chars"
  min_length = 14
}

output "snowflake_password_policy" {
  description = "Example Snowflake Password Policy"
  value = snowflake_password_policy.test14chars
}
