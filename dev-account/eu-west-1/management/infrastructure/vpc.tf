module "vpc" {
  source = "../../../../modules/service/infrastructure/management-vpc"

  vpc_cidr_block  = "10.0.0.0/16"
  environment     = "${var.environment}"
  aws_region      = "${var.aws_region}"
  service_name    = "${var.service_name}"
  az_limit        = "${var.az_limit}"
  enable_flow_log = "${var.enable_flow_log}"
}
