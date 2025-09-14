# providers.tf（これに置き換え）
variable "organization_name" {}
variable "account_name" {}
variable "role"    { default = "SECURITYADMIN" }
variable "private_key_passphrase" { default = null }

provider "snowflake" {
  organization_name      = var.organization_name
  account_name           = var.account_name
  role                   = var.role
  authenticator          = "JWT"                 # or "SNOWFLAKE_JWT"
  private_key            = file("/tmp/sf_key.pem")
  private_key_passphrase = var.private_key_passphrase
}

