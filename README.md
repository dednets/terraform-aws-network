# Terraform Module - AWS Network

## Usage

```hcl
module "my-network" {
    source "dednets/aws-network"

    vpc_name          = "tdc2020"
    terraform_version = "0.14.0"
    cidr              = "10.66.0.0/16"
    tags = {
        "Env" = "development"
    }

}
```
