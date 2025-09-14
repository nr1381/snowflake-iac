terraform {
  required_version = ">= 1.5.0"
  required_providers {
    snowflake = { source = "snowflakedb/snowflake", version = ">= 2.6.0" }
  }
}
