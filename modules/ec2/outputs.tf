output "instance" {
  value = aws_instance.ec2
}

output "private_ip" {
  value = aws_instance.ec2.private_ip
}
