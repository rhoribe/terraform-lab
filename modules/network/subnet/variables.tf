variable "vpc_id" {
  type        = string
  description = "The VPC id"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "subnet_cidr" {
  type        = list(any)
  description = "Subnet cidr block"
}

variable "availability_zone" {
  type        = list(any)
  description = "Availability zone"
}

