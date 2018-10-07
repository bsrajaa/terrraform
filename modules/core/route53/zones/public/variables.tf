variable "aws_region" {
  description = "AWS region name"
}

variable "zone_name" {
  description = "DNS zone name"
}

variable "force_destroy" {
  description = "Don't allow user to remove DNS records"
  default     = false
}
