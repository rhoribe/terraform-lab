variable "vpc_id" {
  type        = string
  description = "The VPC id"
  default     = ""
}

variable "subnet_id" {
  type        = list(any)
  description = "Subnets Ids"
  default     = []
}

variable "route_table_name" {
  type        = string
  description = "Route Table Name"
  default     = ""
}

