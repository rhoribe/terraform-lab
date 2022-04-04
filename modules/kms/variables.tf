variable "description" {
  description = "Description of the resource"
  type        = string
}

variable "deletion_window_in_days" {
  description = "The number of days to wait before deleting the resource"
  type        = number
}

variable "name" {
  description = "Name of the resource"
  type        = string
}
