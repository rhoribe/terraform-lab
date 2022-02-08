resource "aws_efs_file_system" "efs" {
  creation_token         = var.creation_token
  availability_zone_name = var.availability_zone_name
  encrypted              = var.encrypted
  kms_key_id             = var.kms_key_id
  tags = {
    Name = var.name
  }
}