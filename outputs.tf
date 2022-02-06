output "instance" {
  value = module.ec2.id
}

output "private_ip" {
  value = module.ec2.private_ip
}
