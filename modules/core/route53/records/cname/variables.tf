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

variable "records" {
  description = "CNAME records"
}

variable "ttl" {
  description = "Time to live"
  default     = 300
}
