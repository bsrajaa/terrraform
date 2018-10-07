variable "aws_region" {
  description = "AWS region"
}

variable "environment" {
  description = "Environment name"
}

variable "service_name" {
  description = "Service related to infrastructure"
  default     = "management-vpc"
}

variable "vpc_cidr_block" {
  description = "vpc_cidr_block related to vpc subnets"
}

variable "az_limit" {
  description = "Availability zones"
  default     = 3
}

variable "enable_flow_log" {
  description = "Enable vpc flow logs"
}

variable "delete_default_sg_rules" {
  description = "Delete all rules from default security groups"
  default     = "false"
}

variable "auto-accept" {
  default = "true"
}
