![Logo](https://autoscaleupinfra-buckets.s3.ap-northeast-1.amazonaws.com/1.png?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEHgaCmFwLXNvdXRoLTEiRzBFAiEArvjtoCQOyS0UUaYg9iuoDTzlT9dcAZsrFMhqH7WhRkECICYc0exc6U4C3r7jkgt04f9F%2Feds5%2B867eiSdBd6NHkpKu0CCNH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMODM0Mjc3NzY3NDM2IgzD2wylrkOqA1M9rgsqwQKdB2dOXEwxTk3rcw5eeoWvsZMqSizn%2FiEK5sqzSnWbbJXovNwBSFgSJW8E4WClk13wWepFObrGwBDf6HejBN1ozg%2BhuivCOSx5bEjhmy%2FvoKmoV%2Bt%2FrnIffXsQajjbwpRe3rswK1YosvR2%2BJbvFIy6Q33l4JVdE9e30ldorSE6ION3x4Jk0%2FAa4ZgZFBcuLIP9m%2BbCITnq8RMH6p0bAvUu%2FrflKkPlgNWIGWL3vWqp2RBJSrJq5JlOC%2BsUL9aud%2FW1WqV3hyxeBJAsWBKWKjzxuQP6NvD5DZQUmietpsagP7bJ300FbVJj3HBg826aJgWTHlxPaB5fYo8TV1H5Ah%2BFRk7oiNnjYqwStNiAaESbYjvZZzKCRqJV%2FPqpnxgrjakwphQT3xaLSxg0kcl567VCBfBRt%2F3KhH9xxDBemmZgoCEwz4fQpAY6swJAzZGvPhKv0Q7Kzz8lQjUgqvGzgAqbj115jp9hpZw3U%2BpxgJIGEWBuY1PZbcvpA12tuTw2HXWDCFh3TTKdOxapzc%2B%2BUPcBlP65fSZlacEUFeswiV4ujEvbQTvTrgvOYAO6mluh9wIBqn0XHnLIikbv3XlVlP%2BIe4dzdkC0oGwEDDnK5tVChCwlYA%2FYo2axu8pRx3qKyWKJ5J4ddok8uVxvpXk1Dz3%2FPqjFqbWfiOs%2FxtZUDlBHGpFOmJBGxbCjTSppw3VDCo1y2COP6CokHMG8lJAXL%2BMLe0%2FmsvIdJy%2Fk6TbqXA1oCJzvEUY4N%2F%2BthylubX7DOf3jdVl4Ejv2cd9fJJhBRzOefZiopOoymZqfVl9LLQe6SeBhCbhKml7fpYfd5se29t3hNsTynkrDmCfHgtwp&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230622T102749Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA4EPWUPEGC2EZKCF7%2F20230622%2Fap-northeast-1%2Fs3%2Faws4_request&X-Amz-Signature=aa25867addd41652a115235bdce59790c9c03fb62c30d44598baa8a5844fec72)


## Badges

[![Terraform AWS](https://github.com/ScaleupInfra/terraform-aws-s3-bucket/actions/workflows/main.yml/badge.svg)](https://github.com/ScaleupInfra/terraform-aws-s3-bucket/actions/workflows/main.yml)


# Terraform AWS EC2 Instance Module

This Terraform module enables you to create an AWS EC2 instance programmatically using Terraform. With this module, you can automate the process of launching an EC2 instance with customizable settings.

## Prerequisites

- Terraform latest version
- AWS Account (a trial account would work)

## Usage

To use this module, include the following code in your Terraform configuration:

```hcl
module "ec2" {
    source            = "./ec2-module"
    ami_id            = var.ami_id
    instance_type     = var.instance_type
    key_name          = var.key_name
    instance_names    = var.instance_names
}
```

Make sure to customize the module name as ec2 or with the name of your choice. Adjust the source with the name of the folder that contains all the code. For example, here I have created a folder named "ec2-module".

## Requirements

| Name | Version |
|------|---------|
|[aws](#requirement\_aws) | >= 3.0.0 |

- ami_id: The ID of the AMI to launch.
- instance_type: The type of EC2 instance to launch.
- key_name: The name of the key pair for SSH access.

## Variables

| Name           | Description                          | Type          |
| -------------- | ------------------------------------ | ------------- |
| ami_id         | ID of the AMI to launch              | string        |
| instance_type  | Type of EC2 instance                 | string        |
| key_name       | Name of the key pair for SSH access  | string        |
| instance_names | List of instance names                | list(string)  |

## Validation

The `instance_names` variable is validated to ensure that it follows a specific format. The format should be: `'companyname-Teamname-env-module-purpose'`, for example, `'autoscaleupinfra-Engineering-dev-ec2-module'`. This validation helps maintain consistency and readability in naming instances.


## Provider

| Name | Version |
|------|---------|
|[aws](#provider\_aws) | >= 3.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| [ami\_id](#input\_ami\_id) | ID of the AMI to launch | `any` | n/a | yes |
| [instance\_names](#input\_instance\_names) | n/a | `list(string)` | n/a | yes |
| [instance\_type](#input\_instance\_type) | Type of EC2 instance | `any` | n/a | yes |
| [key\_name](#input\_key\_name) | Name of the key pair for SSH access | `any` | n/a | yes |

## Outputs

## Run Locally

Clone the project

```bash
git clone https://github.com/ScaleupInfra/terraform-aws-ec2-instance.git

```

Go to the project directory

```bash
cd terraform-aws-ec2-instance
terraform init
terraform plan
terraform apply -auto-approve

```

Destroy Infrastructrre  dependencies

```bash
  terraform destroy -auto-approve
```



## Support

Join our Open Source Community on [Slack](https://app.slack.com/huddle/T05EL2WSB2M/C05EL2WTMA5). It's FREE for everyone! Our "SweetOps" community is where you get to talk with others who share a similar vision for how to rollout and manage infrastructure. This is the best place to talk shop, ask questions, solicit feedback, and work together as a community to build totally sweet infrastructure.


## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/)



## Authors

- [@octokatherine](https://www.github.com/octokatherine)


## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.

