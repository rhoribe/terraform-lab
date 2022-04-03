variable "encrypted" {
  type        = bool
  description = "Ecrypted"
  default     = false
}

variable "kms_key_id" {
  type        = string
  description = "KMS Key ID"
  default     = null
}

variable "availability_zone_name" {
  type        = string
  description = "Availability zone"
  default     = null
}

variable "name" {
  type        = string
  description = "Name"
  default     = null
}

variable "creation_token" {
  type        = string
  description = "Creation token"
  default     = null
}
