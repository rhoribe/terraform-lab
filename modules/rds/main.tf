resource "aws_db_subnet_group" "subnet_group" {
  name       = "${var.identifier}-subnet-group"
  subnet_ids = var.subnet_ids
}

resource "aws_db_parameter_group" "parameter_group" {
  name   = "${var.identifier}-parameter-group"
  family = var.family
}

resource "aws_db_option_group" "db_option_group" {
  name                     = "${var.identifier}-option-group"
  option_group_description = "Option Group"
  engine_name              = var.engine_name
  major_engine_version     = var.major_engine_version
}

resource "aws_db_instance" "db" {
  identifier                      = var.identifier
  instance_class                  = var.instance_class
  engine                          = aws_db_option_group.db_option_group.engine_name
  engine_version                  = var.engine_version
  allocated_storage               = var.allocated_storage
  max_allocated_storage           = var.max_allocated_storage
  storage_encrypted               = var.storage_encrypted
  backup_retention_period         = var.backup_retention_period
  backup_window                   = var.backup_window
  ca_cert_identifier              = var.ca_cert_identifier
  copy_tags_to_snapshot           = var.copy_tags_to_snapshot
  db_subnet_group_name            = aws_db_subnet_group.subnet_group.name
  vpc_security_group_ids          = var.vpc_security_group_ids
  deletion_protection             = var.deletion_protection
  maintenance_window              = var.maintenance_window
  multi_az                        = var.multi_az
  parameter_group_name            = aws_db_parameter_group.parameter_group.name
  port                            = var.port
  publicly_accessible             = var.publicly_accessible
  username                        = var.username
  password                        = var.password
  option_group_name               = aws_db_option_group.db_option_group.name
  skip_final_snapshot             = var.skip_final_snapshot
  storage_type                    = var.storage_type
  kms_key_id                      = var.kms_key_id
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  license_model                   = var.license_model
  depends_on = [
    aws_db_parameter_group.parameter_group,
    aws_db_subnet_group.subnet_group,
    aws_db_option_group.db_option_group
  ]
}
