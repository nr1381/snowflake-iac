variable "account" {}
variable "user" {}
variable "role" { default = "SECURITYADMIN" }
variable "private_key_path" {}
# ある場合だけ:
# variable "private_key_passphrase" {}

provider "snowflake" {
  account       = var.account          # 例: RJ12293.ap-northeast-1
  username      = var.user             # 例: TF_ADMIN
  role          = var.role

  # ← キーペア認証を使う宣言（これが無いと private_key_path が弾かれる）
  authenticator     = "snowflake_jwt"

  private_key_path  = var.private_key_path
  # private_key_passphrase = var.private_key_passphrase
}

