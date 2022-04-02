output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}

output "vpc_cidr_block" {
  value = aws_vpc.vpc.cidr_block
}

output "id" {
  value = aws_vpc.vpc.id
}

// output "subnet_cidr" {
//   value = aws_subnet.subnet.*.cidr_block
// }

// output "subnet_id" {
//   value = aws_subnet.subnet.*.id
// }

// output "availability_zone" {
//   value = aws_subnet.subnet.*.availability_zone
// }
