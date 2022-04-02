resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
  dynamic "route" {
    for_each = var.route
    content {
      cidr_block                = route.value.cidr_block
      gateway_id                = route.value.gateway_id
      nat_gateway_id            = route.value.nat_gateway_id
      network_interface_id      = route.value.network_interface_id
      local_gateway_id          = route.value.local_gateway_id
      transit_gateway_id        = route.value.transit_gateway_id
      vpc_endpoint_id           = route.value.vpc_endpoint_id
      vpc_peering_connection_id = route.value.vpc_peering_connection_id
    }
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "route_table_association" {
  count          = length(var.subnet_id)
  subnet_id      = var.subnet_id[count.index]
  route_table_id = aws_route_table.route_table.id
  depends_on = [
    aws_route_table.route_table
  ]
}