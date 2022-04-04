variable "instance_type" {
  type        = string
  description = "Type of EC2"
}

variable "instance_name" {
  type        = string
  description = "EC2 instance name"
}

variable "ami" {
  type        = string
  description = "AMI to use"
}

variable "subnet_id" {
  type        = string
  description = "subnet id"
}

variable "vpc_security_group_ids" {
  description = "VPC Security Groups"
  type        = list(string)
}

variable "key_name" {
  description = "Key Name"
  type        = string
  sensitive   = true
}

variable "associate_public_ip_address" {
  description = "Associate Public IP"
  type        = bool
}

variable "encrypted" {
  type        = bool
  description = "Ecrypted Volume"
}

variable "volume_type" {
  type        = string
  description = "Volume Type"
}

variable "volume_size" {
  type        = number
  description = "Volume Size"
}

variable "kms_key_id" {
  type        = string
  description = "KMS Key ID"
}

variable "user_data" {
  type        = string
  description = "User Data"
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM Instance Profile"
}