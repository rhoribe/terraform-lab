variable "sg_name" {
  description = "Security Group Name"
  type        = string
}

variable "sg_description" {
  description = "Security Group descritpion"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ingress" {
  description = "Ingress Rules"
  type        = any
}

variable "egress" {
  description = "Egress Rules"
  type        = any
}