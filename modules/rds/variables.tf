#### DB Variables ####

variable "backup_retention_period" {
  description = "Backup retention period"
  type        = number
}

variable "backup_window" {
  description = "Backup window"
  type        = string
}

variable "ca_cert_identifier" {
  description = "Ca cert identifier"
  type        = string
}

variable "maintenance_window" {
  description = "Maintenance Window"
  type        = string
}

variable "username" {
  description = "DB Username "
  type        = string
  sensitive   = true
}

variable "password" {
  description = "DB Password"
  type        = string
  sensitive   = true
}

variable "identifier" {
  description = "Instance name"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "family" {
  description = "Parameter group family"
  type        = string
}

variable "engine_name" {
  description = "Engine name"
  type        = string
}

variable "major_engine_version" {
  description = "Major engine version"
  type        = string
}

variable "instance_class" {
  description = "Instance class"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage"
  type        = number
}

variable "max_allocated_storage" {
  description = "Max allocated storage"
  type        = number
}

variable "storage_encrypted" {
  description = "Storage encrypted"
  type        = bool
}

variable "copy_tags_to_snapshot" {
  description = "Copy tags to snapshot"
  type        = bool
}

variable "deletion_protection" {
  description = "Deletion protection"
  type        = bool
}

variable "multi_az" {
  description = "Multi AZ"
  type        = bool
}

variable "port" {
  description = "Port"
  type        = number
}

variable "publicly_accessible" {
  description = "Publicly accessible"
  type        = bool
}

variable "skip_final_snapshot" {
  description = "Skip final snapshot"
  type        = bool
}

variable "storage_type" {
  description = "Storage type"
  type        = string
}

variable "kms_key_id" {
  description = "KMS Key ID"
  type        = string
}

variable "enabled_cloudwatch_logs_exports" {
  description = "Enabled Cloudwatch Logs Exports"
  type        = list(string)
}

variable "vpc_security_group_ids" {
  description = "VPC Security Group IDs"
  type        = list(string)
}

variable "engine_version" {
  description = "Engine Version"
  type        = string
}

variable "license_model" {
  description = "License model of the DB instance"
  type        = string
}
