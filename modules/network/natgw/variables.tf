variable "connectivity_type" {
  type        = string
  description = "Connectivity type"
  default     = ""
}

variable "allocation_id" {
  type        = string
  description = "EIP allocation_id"
  default     = ""
}

variable "subnet_id" {
  type        = string
  description = "Subnet Id"
  default     = ""
}

variable "nat_gateway_name" {
  type        = string
  description = "Nat GW  Name"
  default     = ""
}