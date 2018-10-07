module "vpc" {
  source          = "../../../core/vpc"
  environment     = "${var.environment}"
  service_name    = "${var.service_name}"
  vpc_cidr_block  = "${var.vpc_cidr_block}"
  az_limit        = "${var.az_limit}"
  enable_flow_log = "${var.enable_flow_log}"
}
