variable "role_name" {
  description = "Role name"
  type        = string
}

variable "assume_role_policy" {
  description = "Policy document"
  type        = any
}

variable "policy_document" {
  description = "Policy document"
  type        = any
}