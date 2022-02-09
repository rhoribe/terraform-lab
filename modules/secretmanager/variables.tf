variable "length" {
  type    = number
  default = 16
}

variable "special" {
  type    = bool
  default = false
}

variable "min_upper" {
  type    = number
  default = 3
}

variable "min_lower" {
  type    = number
  default = 3
}

variable "min_numeric" {
  type    = number
  default = 3
}

variable "name" {
  type    = string
  default = "password"
}

variable "recovery_window_in_days" {
  type    = number
  default = 0
}
