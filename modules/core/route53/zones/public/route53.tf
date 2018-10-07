resource aws_route53_zone "zone" {
  name          = "${var.zone_name}"
  force_destroy = "${var.force_destroy}"
}
