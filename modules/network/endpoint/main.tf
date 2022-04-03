resource "aws_vpc_endpoint" "vpce" {
  vpc_id            = var.vpc_id
  service_name      = var.service_name
  vpc_endpoint_type = var.vpc_endpoint_type
  tags = {
    Name = var.vpce_name
  }
}

resource "aws_vpc_endpoint_route_table_association" "vpce_route" {
  route_table_id  = var.route_table_id
  vpc_endpoint_id = aws_vpc_endpoint.vpce.id
}