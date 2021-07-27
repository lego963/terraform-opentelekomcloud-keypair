# terraform-opentelekomcloud-keypair

Terraform module which creates ComputeV2 KeyPair resource on OpenTelekomCloud.

These types of resources are supported:

* [KeyPair](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/compute_keypair_v2)

## Terraform versions

Terraform 0.12 and newer.

## Usage

### Create New ComputeV2 KeyPair

```hcl
resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "keypair" {
  source = "terraform-opentelekomcloud-modules/keypair/opentelekomcloud"

  prefix     = "infra"
  public_key = tls_private_key.this.public_key_openssh
}
```

### Import existing public key as ComputeV2 KeyPair

```hcl
module "keypair" {
  source = "terraform-opentelekomcloud-modules/keypair/opentelekomcloud"

  key_name   = "infra"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLo1BCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAT9+OfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZquwhvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TAIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIFuu1p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB example@mail.com"
}
```

## Conditional creation

Sometimes you need to have a way to create KeyPair conditionally but Terraform does not allow to use `count` inside `module` block, so the solution is to specify argument `create_keypair`.

```hcl
# This ComputeV2 KeyPair will not be created
module "keypair" {
  source = "terraform-opentelekomcloud-modules/keypair/opentelekomcloud"

  create_keypair = false
  # ... omitted
}
```

## Examples

* [Simple KeyPair](https://github.com/terraform-opentelekomcloud-modules/terraform-opentelekomcloud-keypair/tree/main/examples/simple-keypair)

## Requirements

| Name                                                                                           | Version    |
| ---------------------------------------------------------------------------------------------- | ---------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)                      | >= 0.12.21 |
| <a name="requirement_opentelekomcloud"></a> [opentelekomcloud](#requirement\_opentelekomcloud) | >= 1.23.6  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                           | Type     |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [opentelekomcloud_compute_keypair_v2.this](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/compute_keypair_v2) | resource |

## Inputs

| Name                                                                          | Description                             | Type     | Default     | Required |
| ----------------------------------------------------------------------------- | --------------------------------------- | -------- | ----------- | :------: |
| <a name="input_prefix"></a> [prefix](#input\_prefix)                          | Prefix for KeyPair.                     | `string` | `"default"` |    no    |
| <a name="input_public_key"></a> [public_key](#input\_public\_key)             | The public key material.                | `string` | `""`        |    no    |
| <a name="input_create_keypair"></a> [create_keypair](#input\_create\_keypair) | Controls if key pair should be created. | `bool`   | `true`      |    no    |

## Outputs

| Name                                                                       | Description              |
| -------------------------------------------------------------------------- | ------------------------ |
| <a name="output_keypair_name"></a> [keypair\_name](#output\_keypair\_name) | The Name of the KeyPair. |


## Authors

Module managed by [Rodion Gyrbu](https://github.com/lego963).

## License

Apache 2 Licensed. See LICENSE for full details.
