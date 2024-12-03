# basic resource
# resource "snowflake_tag" "tag" {
#  name     = "tag"
#  database = "database"
#  schema   = "schema"
#}

# complete resource
resource "snowflake_tag" "tag" {
  name             = "cost_center"
  database         = "TF_DEMO"
  schema           = "TERRAFORM"
  comment          = "cost_center tag"
  allowed_values   = ["val_1", "val_2"]
  # masking_policies = [snowfalke_masking_policy.masking_policy.fully_qualified_name]
}
