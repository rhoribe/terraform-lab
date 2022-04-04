module "kms" {
  source                  = "./modules/kms"
  description             = local.kms.description
  name                    = local.kms.name
  deletion_window_in_days = local.kms.deletion_window_in_days
}

module "efs" {
  source                 = "./modules/efs"
  creation_token         = local.efs.creation_token
  availability_zone_name = module.public_subnet.availability_zone[0]
  encrypted              = local.efs.encrypted
  kms_key_id             = module.kms.arn
  name                   = local.efs.name
  depends_on             = [module.vpc, module.kms]
}

resource "random_id" "random_sufix" {
  byte_length = 4
}

module "s3" {
  source                  = "./modules/s3"
  count                   = local.s3.count
  versioning_status       = local.s3.versioning_status
  restrict_public_buckets = local.s3.restrict_public_buckets
  ignore_public_acls      = local.s3.ignore_public_acls
  block_public_acls       = local.s3.block_public_acls
  block_public_policy     = local.s3.block_public_policy
  tags                    = local.s3.tags
  bucket                  = "${local.s3.bucket_name}-${count.index}-${random_id.random_sufix.hex}"
}
