resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name                = var.key_name

  tags = merge(local.tags, {
    "Name" = "autoscaleupinfra-engineering-dev-s3-module"
  })
}

locals {
  tags = {
    "Created by"  = "Tushar"
    "Env"         = "dev"
    "Company"     = "autostacelupinfra"
    "Automation"  = "terraform"
  }
}
