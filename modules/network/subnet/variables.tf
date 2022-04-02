variable "vpc_id" {
  type        = string
  description = "The VPC id"
  default     = ""
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = ""
}

variable "subnet_cidr" {
  type        = list(any)
  description = "Subnet cidr block"
  default     = []
}

variable "availability_zone" {
  type        = list(any)
  description = "Availability zone"
  default     = []
}

