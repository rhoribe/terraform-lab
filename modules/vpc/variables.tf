variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
  default     = ""
}

variable "vpc_cidr" {
  type        = string
  description = "vpc cidr"
  default     = ""
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = ""
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet cidr block"
  default     = ""
}

variable "availability_zone" {
  type        = string
  description = "Availability zone"
  default     = ""
}