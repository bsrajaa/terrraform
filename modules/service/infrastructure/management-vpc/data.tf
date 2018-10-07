data "aws_caller_identity" "current" {}

data "terraform_remote_state" "access" {
  backend = "s3"

  config {
    bucket = "raja-labs-terraform-state"
    key    = "rajalabs/dev-account/eu-west-1/access/infrastructure/terraform.tfstate"
    region = "${var.aws_region}"
  }
}
