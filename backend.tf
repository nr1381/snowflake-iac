terraform {
  backend "s3" {
    bucket         = "terafform-test-225"
    key            = "tfstate/snowflake-dev.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "tfstate-locks"
    encrypt        = true
  }
}
