variable "host_os" {
  type = string

  validation {
    condition     = contains(["windows", "linux"], var.host_os)
    error_message = "Choose windows or linux. If MacOS, choose linux."
  }
}