output "private_ip" {
  value = module.ec2.private_ip[0]
}

output "bucket" {
  value = module.s3.bucket[0]
}
