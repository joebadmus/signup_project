data "terraform_remote_state" "config" {
  backend = "s3"
  config = {
    bucket = "joebadmus-dev-signup-backend"
    key    = "infra/network/terraform.tfstate"
    region = "eu-west-2"
  }
}
