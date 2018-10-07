output "route53_zone_id" {
  value = "${aws_route53_zone.zone.zone_id}"
}

output "route53_zone_name" {
  value = "${aws_route53_zone.zone.name}"
}

output "route53_zone_nameservers" {
  value = "${aws_route53_zone.zone.name_servers}"
}
