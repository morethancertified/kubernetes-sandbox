variable "environment_tag" {
  type        = string
  description = "Value for Environment tag."
}

variable "project_tag" {
  type        = string
  description = "Value for Project tag."
}

variable "credentials_profile" {
  type        = string
  description = "Profile name in AWS Credentials."
}

variable "region" {
  type = string
}

variable "host_os" {
  type = string

  validation {
    condition     = contains(["windows", "linux"], var.host_os)
    error_message = "Choose windows or linux. If MacOS, choose linux."
  }
}

variable "ssh_config_location" {
  type        = string
  description = "Location of the config file for VS Code"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC."
}

variable "user_ip" {
  type = string
  description = "IP Address in CIDR format of the user."
}

variable "public_key_location" {
  type        = string
  description = "Location of the public SSH key to use."
}

variable "private_key_location" {
  type        = string
  description = "Location of the private SSH key to use for the provisioner."
}

variable "key_name" {
  type        = string
  description = "Name for the key."
}


variable "ec2_user" {
  type = string
  description = "Username for EC2 instance for provisioner."
}

variable "instance_type" {
  type        = string
  description = "Type of Ec2 instance."
}

variable "instance_storage" {
  type        = string
  description = "EBS storage for instance in GiB."
}
