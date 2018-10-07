module "route53_internal_zone_association" {
  source = "../../../core/route53/associate"

  #zone_id    = "${data.terraform_remote_state.access.private_local_route53_zone_id}"
  zone_id    = "Z1GXN8SXCQG2D8"
  vpc_id     = "${module.vpc.vpc_id}"
  aws_region = "${var.aws_region}"
}
