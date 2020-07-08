provider "aws" {
  region  = "eu-west-2"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket         = "joebadmus-dev-signup-backend"
    key            = "infra/network/terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dev-signup"
    region         = "eu-west-2"
  }
}
