resource "aws_s3_bucket" "s3" {
  bucket = var.bucket
  tags   = var.tags
}

resource "aws_s3_bucket_public_access_block" "s3" {
  bucket                  = aws_s3_bucket.s3.bucket
  ignore_public_acls      = var.ignore_public_acls
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  restrict_public_buckets = var.restrict_public_buckets
  depends_on              = [aws_s3_bucket.s3]
}


