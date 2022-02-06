output "private_ip" {
  count = local.ec2_config.count
  value = module.ec2.private_ip[count.index]
}

output "bucket" {
  value = module.s3.bucket
}
