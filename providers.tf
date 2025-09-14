variable "account" {}
variable "user" {}
variable "role" { default = "SECURITYADMIN" }
variable "private_key_path" {}
variable "private_key_passphrase" { default = null }

provider "snowflake" {
  account        = var.account
  username       = var.user
  role           = var.role
  authenticator  = "SNOWFLAKE_JWT"
  private_key    = file(var.private_key_path)
  private_key_passphrase = var.private_key_passphrase
}

