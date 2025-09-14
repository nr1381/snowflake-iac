variable "organization_name" {}
variable "account_name" {}
variable "region"  { default = "ap-northeast-1" }
variable "username" {}
variable "role"    { default = "SECURITYADMIN" }
variable "private_key_passphrase" { default = null }

provider "snowflake" {
  organization_name       = var.organization_name   # 例: OG39968
  account_name            = var.account_name        # 例: RJ12293
  region                  = var.region
  username                = var.username            # 例: TF_ADMIN
  role                    = var.role
  authenticator           = "SNOWFLAKE_JWT"
  private_key             = file("/tmp/sf_key.pem") # GH Actionsで書き出す
  private_key_passphrase  = var.private_key_passphrase
}

