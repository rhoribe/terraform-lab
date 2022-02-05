variable "instance_type" {
  type = string
  description = "Type of EC2"
  default     = "t2.micro"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
  default     = "instance"
}

