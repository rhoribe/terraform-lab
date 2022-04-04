variable "encrypted" {
  type        = bool
  description = "Ecrypted"
  default     = false
}

variable "kms_key_id" {
  type        = string
  description = "KMS Key ID"
}

variable "availability_zone_name" {
  type        = string
  description = "Availability zone"
}

variable "name" {
  type        = string
  description = "Name"
}

variable "creation_token" {
  type        = string
  description = "Creation token"
}
