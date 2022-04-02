variable "sg_name" {
  description = "Security Group Name"
  type        = string
  default     = null
}

variable "sg_description" {
  description = "Security Group descritpion"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = null
}

variable "ingress" {
  description = "Ingress Rules"
  type        = any
  default     = []
}

variable "egress" {
  description = "Egress Rules"
  type        = any
  default     = []
}