variable "tags" {
  description = "Tags"
  type        = map(any)
}

variable "ignore_public_acls" {
  description = "Ignore Public ACLs"
  type        = bool
}

variable "block_public_acls" {
  description = "Block Public ACLs"
  type        = bool
}

variable "block_public_policy" {
  description = "Block Public Policys"
  type        = bool
}

variable "restrict_public_buckets" {
  description = "Restrict Public Buckets"
  type        = bool
}

variable "bucket" {
  description = "Buckect Name"
  type        = string
}

variable "versioning_status" {
  description = "Bucket Versioning Status"
  type        = string
}