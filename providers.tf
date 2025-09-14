variable "organization_name" {}
variable "account_name" {}
variable "role" { default = "SECURITYADMIN" }
variable "private_key_passphrase" { default = null }

provider "snowflake" {
  organization_name       = var.organization_name   # 例: OG39968
  account_name            = var.account_name        # 例: RJ12293
  role                    = var.role

  # キーペア認証（PEMは GH Actions で /tmp/sf_key.pem に出す）
  authenticator           = "SNOWFLAKE_JWT"
  private_key             = file("/tmp/sf_key.pem")
  private_key_passphrase  = var.private_key_passphrase
}

