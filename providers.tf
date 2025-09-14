variable "account" {}
variable "user" {}
variable "role" { default = "SECURITYADMIN" }
variable "private_key_path" {}

provider "snowflake" {
  account          = var.account        # 例: xy12345.ap-northeast-1
  user             = var.user           # 例: TF_ADMIN
  role             = var.role
  private_key_path = var.private_key_path
  # パスフレーズ付きなら:
  # private_key_passphrase = var.private_key_passphrase
}

