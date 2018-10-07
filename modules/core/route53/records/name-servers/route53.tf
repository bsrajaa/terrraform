resource aws_route53_record "record" {
  zone_id = "${var.zone_id}"
  name    = "${var.record_name}"
  type    = "NS"
  ttl     = "3600"
  records = ["${split(",",var.record_ip)}"]
}
