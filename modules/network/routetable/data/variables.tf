variable "vpc_id" {
  type        = string
  description = "The VPC id"
}

variable "subnet_id" {
  type        = list(any)
  description = "Subnets Ids"
}

variable "route_table_name" {
  type        = string
  description = "Route Table Name"
}

