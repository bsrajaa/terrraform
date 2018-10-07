module "public_raja_labs_route53_zone" {
  source = "../../core/route53/zones/public"

  zone_name = "${var.public_raja_labs_route53_zone_name}"
}

module "public_raja_labs_test_zone" {
  source = "../../core/route53/zones/public"

  zone_name = "${var.public_raja_labs_test_route53_zone_name}"
}
