output "validation_record_fqdn" {
  description = "The FQDN of the route 53 record created for DNS validation"
  value       = "${aws_route53_record.validation_record.fqdn}"
}
