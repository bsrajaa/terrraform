resource aws_internet_gateway "internet_gateway" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name        = "${var.service_name}-${var.environment}-internet-gateway}"
    Type        = "VPC Internet Gateway"
    Environment = "${var.environment}"
  }
}

resource aws_route_table "public_route_table" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name        = "${var.service_name}-${var.environment}-route-table}"
    Type        = "VPC route table"
    Environment = "${var.environment}"
  }
}

resource aws_route "internet_gateway_public_route" {
  route_table_id         = "${aws_route_table.public_route_table.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.internet_gateway.id}"
}

resource aws_route_table_association "public_route_association" {
  count          = "${var.az_limit}"
  subnet_id      = "${element(aws_subnet.subnet_public.*.id,count.index)}"
  route_table_id = "${aws_route_table.public_route_table.id}"
}
