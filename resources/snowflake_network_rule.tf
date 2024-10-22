# assumes the schema exists

resource "snowflake_stage" "example_stage" {
  name        = "TF_DEMO_STAGE"
  database    = "TF_DEMO"
  schema      = "TERRAFORM"
}

# assumes stage exists, requires a valid vpc

resource "snowflake_network_rule" "rule" {
  name       = "internal_stage_rule"
  database   = "TF_DEMO"
  schema     = "TERRAFORM"
  comment    = "A network rule for internal stage."
  type       = "AWSVPCEID"
  mode       = "INTERNAL_STAGE"
  value_list = ["vpce-xxxxxx"]
}
