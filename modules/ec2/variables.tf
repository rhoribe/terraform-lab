variable "instance_type" {
  type        = string
  description = "Type of EC2"
  default     = "t2.micro"
}

variable "instance_name" {
  type        = string
  description = "EC2 instance name"
  default     = "instance"
}

variable "ami" {
  type        = string
  description = "AMI to use"
  default     = ""
}

variable "subnet_id" {
  type        = string
  description = "subnet id"
  default     = ""
}

variable "vpc_security_group_ids" {
  description = "VPC Security Groups"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "Key Name"
  type        = string
  default     = null
  sensitive   = true
}

variable "associate_public_ip_address" {
  description = "Associate Public IP"
  type        = bool
  default     = false
}