resource aws_eip "nat_gateway_eip" {
  vpc   = "true"
  count = "${var.az_limit}"

  tags {
    Name = "${var.environment}-${var.service_name}-${element(aws_subnet.subnet_public.*.availability_zone,count.index)}"
  }
}

resource aws_nat_gateway "nat_gateway" {
  count         = "${var.az_limit}"
  allocation_id = "${element(aws_eip.nat_gateway_eip.*.id, count.index)}"
  subnet_id     = "${element(aws_subnet.subnet_public.*.id, count.index)}"

  tags {
    Name = "${var.environment}-${var.service_name}-${element(aws_subnet.subnet_public.*.availability_zone,count.index)}"
  }
}

resource aws_route_table "private_route_table" {
  count  = "${var.az_limit}"
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name        = "${var.service_name}-${var.environment}-private-route-table-${data.aws_availability_zones.available.names[count.index]}"
    Environment = "${var.environment}"
  }
}

resource aws_route "nat_gateway_private_route" {
  count                  = "${var.az_limit}"
  route_table_id         = "${element(aws_route_table.private_route_table.*.id, count.index)}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${element(aws_nat_gateway.nat_gateway.*.id, count.index)}"
}

resource aws_route_table_association "private_route_association" {
  count          = "${var.az_limit}"
  subnet_id      = "${element(aws_subnet.subnet_private.*.id, count.index)}"
  route_table_id = "${element(aws_route_table.private_route_table.*.id, count.index)}"
}
