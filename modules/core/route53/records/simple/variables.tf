variable "aws_region" {
  description = "AWS region name"
  default     = "eu-west-1"
}

variable "zone_id" {
  description = "AWS zone id"
}

variable "record_name" {
  description = "AWS record name"
}

variable "record_ip" {
  description = "IP address of the record"
}

variable "record_type" {
  description = "DNS record"
}

variable "record_ttl" {
  description = "ttl record"
}
