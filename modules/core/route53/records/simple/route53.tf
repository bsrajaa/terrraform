resource aws_route53_record "record" {
  zone_id = "${var.zone_id}"
  name    = "${var.record_name}"
  type    = "${var.record_type}"
  ttl     = "${var.record_ttl}"
  records = ["${var.record_ip}"]
}
