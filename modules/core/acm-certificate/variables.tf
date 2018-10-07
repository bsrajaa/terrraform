variable "domain_name" {
  description = "domain name for which the certificate should be created"
}

variable "zone_id" {
  description = "The ID of the Route 53 zone"
}

variable "subject_alternative_names" {
  description = "Subject alternative name list "
  type        = "list"
}

variable "san_validation_fqdns" {
  description = "list of san validation records"
  type        = "list"
}
