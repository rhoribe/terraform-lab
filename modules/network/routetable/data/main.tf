resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
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