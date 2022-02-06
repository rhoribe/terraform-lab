output "private_ip" {
  value = module.ec2[0].private_ip
}

output "bucket" {
  value = module.s3[0].bucket
}
