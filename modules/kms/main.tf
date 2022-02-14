resource "aws_kms_key" "key" {
  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days
}

// resource "aws_kms_alias" "key" {
//   name          = var.name
//   target_key_id = aws_kms_key.key.key_id
//   depends_on    = [aws_kms_key.key]
// }