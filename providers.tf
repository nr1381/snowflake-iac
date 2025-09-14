# providers.tf

# ==== variables ====
variable "organization_name" {
  type = string
}

variable "account_name" {
  type = string
}

variable "role" {
  type    = string
  default = "SECURITYADMIN"
}

variable "private_key_passphrase" {
  type      = string
  default   = null
  sensitive = true
}

# ==== provider ====
provider "snowflake" {
  organization_name      = var.organization_name   # 例: YDZFCBU
  account_name           = var.account_name        # 例: OG39968
  role                   = var.role

  authenticator          = "SNOWFLAKE_JWT"
  private_key            = file("/tmp/sf_key.pem") # GH Actions が作る
  private_key_passphrase = var.private_key_passphrase
}

