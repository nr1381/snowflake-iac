# providers.tf
variable "account" {}
variable "region"  { default = "ap-northeast-1" }
variable "user"    {}
variable "role"    { default = "SECURITYADMIN" }
variable "private_key_passphrase" { default = null }

provider "snowflake" {
  account  = var.account          # 例: RJ12293（ロケータのみ）
  region   = var.region           # 例: ap-northeast-1
  username = var.user             # 例: TF_ADMIN
  role     = var.role

  authenticator          = "SNOWFLAKE_JWT"
  # GitHub Actions で書き出す鍵を直接読む
  private_key            = file("/tmp/sf_key.pem")
  private_key_passphrase = var.private_key_passphrase
}

