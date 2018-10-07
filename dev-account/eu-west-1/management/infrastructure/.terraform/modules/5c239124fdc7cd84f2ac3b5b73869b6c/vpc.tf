resource "aws_vpc" "vpc" {
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags {
    Name = "${var.service_name}-${var.environment}-vpc"
    Type = "VPC"
  }
}

resource "aws_main_route_table_association" "main_route_table" {
  vpc_id         = "${aws_vpc.vpc.id}"
  route_table_id = "${aws_vpc.vpc.main_route_table_id}"
}
