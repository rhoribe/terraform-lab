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
  type        = list(any)
  description = "Subnet cidr block"
  default     = []
}

variable "availability_zone" {
  type        = list(any)
  description = "Availability zone"
  default     = []
}

variable "internet_gw_name" {
  description = "Internet  Gateway Name "
  type        = string
  default     = null
}

variable "route_table_name" {
  description = "Route Table Name"
  type        = string
  default     = null
}

variable "route_table_cidr" {
  description = "Route Table cidr"
  type        = string
  default     = null
}