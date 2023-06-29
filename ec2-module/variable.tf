variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
}

variable "security_group_name" {
  description = "Name of the security group"
}

variable "security_group_description" {
  description = "Description of the security group"
}

variable "instance_name" {
  description = "Name of the instance"
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
