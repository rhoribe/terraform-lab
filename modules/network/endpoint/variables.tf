variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "service_name" {
  description = "Serivice Name"
  type        = string
}

variable "vpce_name" {
  description = "VPC Endpoint Name"
  type        = string
}

variable "vpc_endpoint_type" {
  description = "VPC Endpoint Type"
  type        = string
}

variable "route_table_id" {
  description = "Route Table ID"
  type        = string
}