variable "environment" {
  description = "Environment name"
}

variable "service_name" {
  description = "Service related to infrastructure"
}

variable "vpc_cidr_block" {
  description = "vpc_cidr_block related to vpc subnets"
}

variable "az_limit" {
  description = "Availability zones"
}

variable "enable_flow_log" {
  description = "Enable vpc flow logs"
}

variable "delete_default_sg_rules" {
  description = "Delete all rules from default security groups"
  default     = 0
}
