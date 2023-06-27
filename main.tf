module "ec2" {
  source = "./ec2-module"

  # Pass the values to the module
  ami_id                       = "ami-0f9816f78187c68fb"
  instance_type                = "t2.micro"
  instance_names               = ["autoscaleupinfra-engineering-dev-s3-module"]
  key_name                     = "tushar-key"

}


locals {
  tags = {
    "Created by"  = "Tushar"
    "Env"         = "dev"
    "Company"     = "autoscaleupinfra"
    "Automation"  = "terraform"
  }
}
