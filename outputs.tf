output "private_ip" {
  value = module.ec2[*].private_ip
}

output "public_ip" {
  value = module.ec2[*].public_ip
}

output "bucket" {
  value = module.s3[*].bucket
}

output "rds_endpoint" {
  value = module.rds[*].endpoint
}
