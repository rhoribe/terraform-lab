locals {
  kms = {
    name                    = "alias/aws-lab-kms"
    description             = "aws-lab-kms"
    deletion_window_in_days = 7
  }
  efs = {
    creation_token = "awslab"
    encrypted      = true
    name           = "awslab"
  }
  s3 = {
    bucket_name             = "awslab"
    count                   = 1
    versioning_status       = "Enabled"
    restrict_public_buckets = true
    ignore_public_acls      = true
    block_public_acls       = true
    block_public_policy     = true
    tags                    = {}
  }
}