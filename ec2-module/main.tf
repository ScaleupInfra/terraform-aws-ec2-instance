resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id              = aws_subnet.web.id

  tags = merge(local.tags, {
    "Name" = "autoscaleupinfra-engineering-dev-s3-module"
  })
}

resource "aws_security_group" "web" {
  name        = "my-security-group"
  description = "My security group"

  vpc_id = aws_vpc.main.id

  # Define your security group rules here
  # ...
}

resource "aws_subnet" "web" {
  cidr_block        = "10.0.0.0/24"
  vpc_id            = aws_vpc.main.id
  availability_zone = "ap-northeast-1a"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

locals {
  tags = {
    "Created by"  = "Tushar"
    "Env"         = "dev"
    "Company"     = "autoscaleupinfra"
    "Automation"  = "terraform"
  }
}