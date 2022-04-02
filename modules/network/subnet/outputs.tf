
output "subnet_cidr" {
  value = aws_subnet.subnet.*.cidr_block
}

output "id" {
  value = aws_subnet.subnet.*.id
}

output "availability_zone" {
  value = aws_subnet.subnet.*.availability_zone
}
