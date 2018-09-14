provider "aws" {
    region = "us-east-1"
    allowed_account_ids = ["563249796440"]
}

terraform {
  backend "s3" {
    bucket = "test-atlantis.io"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

