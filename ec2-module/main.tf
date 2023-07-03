resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id              = aws_subnet.web.id

  tags = merge(local.tags, {
    "Name" = var.instance_name
  })
}

resource "aws_security_group" "web" {
  name        = var.security_group_name
  description = var.security_group_description

  vpc_id = aws_vpc.main.id

}

resource "aws_subnet" "web" {
  cidr_block        = var.subnet_cidr_block
  vpc_id            = aws_vpc.main.id
  availability_zone = "ap-northeast-1a"  # Update with your desired availability zone
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
}

locals {
  tags = {
    "Created by"  = "Tushar"
    "Env"         = "dev"
    "Company"     = "autoscaleupinfra"
    "Automation"  = "terraform"
  }
}
