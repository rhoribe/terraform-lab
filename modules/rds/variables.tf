#### DB Variables ####

variable "backup_retention_period" {
  description = "Backup retention period"
  type        = number
  default     = 7
}

variable "backup_window" {
  description = "Backup window"
  type        = string
  default     = "04:00-05:00"
}

variable "ca_cert_identifier" {
  description = "Ca cert identifier"
  type        = string
  default     = "rds-ca-2019"
}

variable "maintenance_window" {
  description = "Maintenance Window"
  type        = string
  default     = "tue:06:00-tue:08:00"
}

variable "username" {
  description = "DB Username "
  type        = string
  sensitive   = true
  default     = "dbmaster"
}

variable "identifier" {
  description = "Instance name"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
  default     = [""]
}

variable "family" {
  description = "Parameter group family"
  type        = string
  default     = ""
}

variable "engine_name" {
  description = "Engine name"
  type        = string
  default     = ""
}

variable "major_engine_version" {
  description = "Major engine version"
  type        = string
  default     = ""
}

variable "instance_class" {
  description = "Instance class"
  type        = string
  default     = ""
}

variable "allocated_storage" {
  description = "Allocated storage"
  type        = number
  default     = null
}

variable "max_allocated_storage" {
  description = "Max allocated storage"
  type        = number
  default     = null
}

variable "storage_encrypted" {
  description = "Storage encrypted"
  type        = bool
  default     = false
}

variable "copy_tags_to_snapshot" {
  description = "Copy tags to snapshot"
  type        = bool
  default     = false
}

variable "deletion_protection" {
  description = "Deletion protection"
  type        = bool
  default     = false
}

variable "multi_az" {
  description = "Multi AZ"
  type        = bool
  default     = false
}

variable "port" {
  description = "Port"
  type        = number
  default     = 3306
}

variable "publicly_accessible" {
  description = "Publicly accessible"
  type        = bool
  default     = false
}

variable "skip_final_snapshot" {
  description = "Skip final snapshot"
  type        = bool
  default     = false
}

variable "storage_type" {
  description = "Storage type"
  type        = string
  default     = "gp2"
}

variable "kms_key_id" {
  description = "KMS Key ID"
  type        = string
  default     = ""
}

variable "enabled_cloudwatch_logs_exports" {
  description = "Enabled Cloudwatch Logs Exports"
  type        = list(string)
  default     = ["error"]
}

variable "vpc_security_group_ids" {
  description = "VPC Security Group IDs"
  type        = list(string)
  default     = [""]
}