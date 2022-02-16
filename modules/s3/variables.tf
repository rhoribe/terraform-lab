variable "tags" {
  description = "Tags"
  type        = map(any)
  default     = {}
}

variable "ignore_public_acls" {
  description = "Ignore Public ACLs"
  type        = bool
  default     = true
}

variable "block_public_acls" {
  description = "Block Public ACLs"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Block Public Policys"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Restrict Public Buckets"
  type        = bool
  default     = true
}

variable "bucket" {
  description = "Buckect Name"
  type        = string
  default     = ""
}

variable "versioning_status" {
  description = "Bucket Versioning Status"
  type        = string
  default     = "Suspended"
}