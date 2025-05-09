# requires ACCOUNTADMIN on the TF user

resource "snowflake_user" "demo_user" {
  name = "DEMO_USER"
}

resource "snowflake_password_policy" "test14chars" {
  database = "DEMO"
  schema   = "DEMO_SCHEMA"
  name     = "test14chars"
  min_length = 14
}

resource "snowflake_user_password_policy_attachment" "ppa" {
  password_policy_name = snowflake_password_policy.test14chars.fully_qualified_name
  user_name            = snowflake_user.demo_user.name
}

# check that the Policy applied at user level with:
# select *
# from table(snowflake.information_schema.POLICY_REFERENCES(
# REF_ENTITY_NAME => 'DEMO_USER',
# REF_ENTITY_DOMAIN => 'USER'
# ));
