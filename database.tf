
// module "rds_password" {
//   source                  = "./modules/secretmanager"
//   length                  = local.rds_sm.length
//   special                 = local.rds_sm.special
//   min_upper               = local.rds_sm.min_upper
//   min_lower               = local.rds_sm.min_lower
//   min_numeric             = local.rds_sm.min_numeric
//   name                    = "${local.rds.identifier}-sm"
//   recovery_window_in_days = local.rds_sm.recovery_window_in_days
// }

// module "rds" {
//   source                          = "./modules/rds"
//   count                           = local.rds.count
//   identifier                      = "${local.rds.identifier}-${count.index}"
//   instance_class                  = local.rds.instance_class
//   allocated_storage               = local.rds.allocated_storage
//   max_allocated_storage           = local.rds.max_allocated_storage
//   storage_encrypted               = local.rds.storage_encrypted
//   backup_retention_period         = local.rds.backup_retention_period
//   backup_window                   = local.rds.backup_window
//   ca_cert_identifier              = local.rds.ca_cert_identifier
//   copy_tags_to_snapshot           = local.rds.copy_tags_to_snapshot
//   vpc_security_group_ids          = [module.data_sg.id]
//   deletion_protection             = local.rds.deletion_protection
//   maintenance_window              = local.rds.maintenance_window
//   multi_az                        = local.rds.multi_az
//   port                            = local.rds.port
//   publicly_accessible             = local.rds.publicly_accessible
//   username                        = local.rds.username
//   password                        = module.rds_password.secret_string
//   skip_final_snapshot             = local.rds.skip_final_snapshot
//   storage_type                    = local.rds.storage_type
//   kms_key_id                      = local.rds.storage_encrypted == true ? module.kms.arn : ""
//   enabled_cloudwatch_logs_exports = local.rds.enabled_cloudwatch_logs_exports
//   engine_name                     = local.rds.engine_name
//   major_engine_version            = local.rds.major_engine_version
//   family                          = local.rds.family
//   engine_version                  = local.rds.engine_version
//   license_model                   = local.rds.license_model
//   subnet_ids                      = module.data_subnet.id
//   depends_on                      = [module.rds_password, module.kms]
// }