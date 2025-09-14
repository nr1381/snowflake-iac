provider "snowflake" {
  organization_name       = var.organization_name
  account_name            = var.account_name
  role                    = var.role

  # ← ここを修正
  authenticator           = "SNOWFLAKE_JWT"

  private_key             = file("/tmp/sf_key.pem")
  private_key_passphrase  = var.private_key_passphrase
}

