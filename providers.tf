variable "account" {}
variable "user" {}
variable "role" { default = "SECURITYADMIN" }
variable "private_key_path" {}
# パスフレーズがある場合のみ
variable "private_key_passphrase" { default = null }

provider "snowflake" {
  account        = var.account          # 例: RJ12293.ap-northeast-1
  username       = var.user             # 例: TF_ADMIN
  role           = var.role

  authenticator  = "SNOWFLAKE_JWT"
  private_key    = file(var.private_key_path)
  private_key_passphrase = var.private_key_passphrase
}

