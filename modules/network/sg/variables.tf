variable "sg_name" {
  description = "Security Group Name"
  type        = string
  default     = ""
}

variable "sg_description" {
  description = "Security Group descritpion"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
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