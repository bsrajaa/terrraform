resource aws_acm_certificate_validation "certificate_validation" {
  certificate_arn = "${aws_acm_certificate_validation.certificate_arn}"

  validation_record_fqdns = [
    "${aws_route53_record.validation_record.fqdn}",
    "${var.san_validation_fqdns}",
  ]
}
