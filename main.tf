module "ec2" {
  source = "./ec2-module"

  # Pass the values to the module
  ami_id                       = "ami-01e442590cadbb4a6"
  instance_type                = "t2.micro"
  instance_name                =  "autoscaleupinfra-engineering-dev-s3-module"
  vpc_cidr_block               = "10.0.0.0/16"
  subnet_cidr_block            = "10.0.0.0/24"
  security_group_name          = "my-security-group"
}

