output "private_ip" {
  value = module.ec2.private_ip
}

output "bucket" {
  value = module.s3.bucket
}
