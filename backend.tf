provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "infra-dev-signup" {
  bucket = "joebadmus-dev-signup-backend"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
