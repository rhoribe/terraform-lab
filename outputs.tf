output "private_ip" {
  value = module.ec2.private_ip[count.index]
}

output "bucket" {
  value = module.s3.bucket
}
