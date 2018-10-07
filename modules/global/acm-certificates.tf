module "raja_labs_uk_certificate" {
  source = "../../core/acm-certificate"

  domain_name = "*.${var.public_raja_labs_route53_zone_name}"
  zone_id     = "${module.public_raja_labs_route53_zone.route53_zone_id}"
}

module "raja_labs_test_uk_certificate" {
  source = "../../core/acm-certificate"

  domain_name = "*.${var.public_raja_labs_test_route53_zone_name}"
  zone_id     = "${module.public_raja_labs_test_route53_zone.route53_zone_id}"

  subject_alternative_names = [
    "*.${var.public_raja_labs_route53_zone_name}",
  ]

  san_validation_fqdns = [
    "${module.raja_labs_uk_certificate.validation_record_fqdn}",
  ]
}
