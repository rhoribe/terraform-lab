resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

// resource "aws_subnet" "subnet" {
//   count             = length(var.subnet_cidr)
//   vpc_id            = aws_vpc.vpc.id
//   cidr_block        = element(var.subnet_cidr, count.index)
//   availability_zone = element(var.availability_zone, count.index)

//   tags = {
//     Name = "${var.subnet_name}-${count.index + 1}"
//   }
//   depends_on = [
//     aws_vpc.vpc
//   ]
// }

// resource "aws_internet_gateway" "internet_gateway" {
//   vpc_id = aws_vpc.vpc.id
//   tags = {
//     Name = var.internet_gw_name
//   }
//   depends_on = [
//     aws_vpc.vpc
//   ]
// }

// resource "aws_route_table" "route_table" {
//   vpc_id = aws_vpc.vpc.id
//   route {
//     cidr_block = var.route_table_cidr
//     gateway_id = aws_internet_gateway.internet_gateway.id
//   }

//   tags = {
//     Name = var.route_table_name
//   }
//   depends_on = [
//     aws_internet_gateway.internet_gateway
//   ]
// }

// resource "aws_route_table_association" "route_table_association" {
//   count          = length(var.subnet_cidr)
//   subnet_id      = element(aws_subnet.subnet.*.id, count.index)
//   route_table_id = aws_route_table.route_table.id
//   depends_on = [
//     aws_route_table.route_table
//   ]
// }