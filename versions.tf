terraform {
  required_version = ">= 1.5.0"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"  # ← ここを修正
      version = "~> 1.0"                    # 安定系（1.x系）
    }
  }
}

