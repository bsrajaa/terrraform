resource aws_route53_record "validation_record" {
  name    = "${aws_acm_certificate.certificate.domain_validation_options.0.resource_record_name}"
  type    = "${aws_acm_certificate.certificate.domain_validation_options.0.resource_record_type}"
  zone_id = "${var.zone_id}"
  ttl     = 60

  records = [
    "${aws_acm_certificate.certificate.domain_validation_options.0.resource_record_value}",
  ]
}
