resource "snowflake_database" "db" {
  name = "TF_DEMO"
}

resource "snowflake_schema" "schema" {
  name     = "TERRAFORM"
  database = "TF_DEMO"
}
