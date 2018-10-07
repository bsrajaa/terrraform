variable "aws_region" {
  description = "AWS region "
  default     = "eu-west-1"
}

variable "environment" {
  description = "Environment where vpc will be created"
  default     = "dev-account"
}

variable "enable_flow_log" {
  description = "Enable vpc flow logs"
  default     = "false"
}

variable "service_name" {
  description = "Name of the VPC"
  default     = "management-vpc"
}

variable "az_limit" {
  description = "No of availability zones for subnet creation"
  default     = "3"
}
