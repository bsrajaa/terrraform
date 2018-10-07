terraform {
  backend "s3" {
    bucket = "raja-labs-terraform-state"
    key    = "raja-labs/dev-account/eu-west-1/management/infrastructure/terraform.tfstate"
    region = "eu-west-1"
    acl    = "bucket-owner-full-control"
  }
}
