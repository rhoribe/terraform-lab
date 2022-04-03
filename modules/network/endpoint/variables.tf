variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
}

variable "service_name" {
  description = "Serivice Name"
  type        = string
  default     = ""
}

variable "vpce_name" {
  description = "VPC Endpoint Name"
  type        = string
  default     = ""
}

variable "vpc_endpoint_type" {
  description = "VPC Endpoint Type"
  type        = string
  default     = ""
}

variable "route_table_id" {
  description = "Route Table ID"
  type        = string
  default     = ""
}