output "secret_string" {
  value = aws_secretsmanager_secret_version.sm.secret_string
}