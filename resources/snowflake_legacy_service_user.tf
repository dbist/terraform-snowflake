provider "snowflake" {
  role = "SECURITYADMIN"
}

resource "snowflake_service_user" "service_user" {
  name         = "Snowflake Service User"
  login_name   = "service_user"
  email        = "service_user@snowflake.example"

  rsa_public_key   = <<EOT
  <RSA_PUBLIC_KEY_HERE>
EOT
}

resource "snowflake_legacy_service_user" "legacy_service_user" {
  name         = "Snowflake Legacy Service User"
  login_name   = "legacy_service_user"
  email        = "legacy_service_user@snowflake.example"

  rsa_public_key   = <<EOT
  <RSA_PUBLIC_KEY_HERE>
EOT
}
