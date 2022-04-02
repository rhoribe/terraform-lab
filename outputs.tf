

// output "bucket" {
//   value = module.s3[*].bucket
// }

// output "rds_endpoint" {
//   value = module.rds[*].endpoint
// }

output "private_subnet_ids" {
  value = module.private_subnet[*].id
}

output "public_subnet_ids" {
  value = module.public_subnet[*].id
}