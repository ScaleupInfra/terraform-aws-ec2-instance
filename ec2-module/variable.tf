locals {
  valid_instance_name_regex = "^[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+$"
}

variable "instance_names" {
  type = list(string)

  validation {
    condition     = length(var.instance_names) == 1
    error_message = "Invalid instance name(s). Instance names must follow the format 'companyname-Teamname-env-module-purpose', e.g., 'autoscaleupinfra-Engineering-dev-ec2-module'."
  }
}

variable "ami_id" {
  description = "ID of the AMI to launch"
}

variable "instance_type" {
  description = "Type of EC2 instance"
}


variable "key_name" {
  description = "Name of the key pair for SSH access"
}


