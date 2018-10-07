variable "aws_region" {
  description = "AWS region name"
}

variable "zone_id" {
  description = "Zone id"
}

variable "record_name" {
  description = "DNS record name "
}

variable "record_type" {
  description = "DNS record type "
}

variable "alias_name" {
  description = "DNS alias name"
}

variable "alias_zone_id" {
  description = "DNS alias zone id"
}

variable "evaluate_target_health" {
  description = "Evaluate the target health"
  default     = true
}
