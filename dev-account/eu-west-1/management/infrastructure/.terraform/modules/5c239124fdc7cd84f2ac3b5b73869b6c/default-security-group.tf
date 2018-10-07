resource "aws_default_security_group" "default" {
  count  = "${var.delete_default_sg_rules}"
  vpc_id = "aws_vpc.vpc.vpc_id"
}
