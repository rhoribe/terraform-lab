resource "random_password" "sm" {
  length      = var.length
  special     = var.special
  min_upper   = var.min_upper
  min_lower   = var.min_lower
  min_numeric = var.min_numeric
}

resource "aws_secretsmanager_secret" "sm" {
  name                    = var.name
  recovery_window_in_days = var.recovery_window_in_days
}

resource "aws_secretsmanager_secret_version" "sm" {
  secret_id     = aws_secretsmanager_secret.sm.id
  secret_string = random_password.sm.result
  depends_on = [
    random_password.sm,
    aws_secretsmanager_secret.sm
  ]
}