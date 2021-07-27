# OpenTelekomCloud ComputeV2 KeyPair

Configuration in this directory creates a KeyPair resource which may be sufficient for development environment.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

## Requirements

| Name                                                                                           | Version    |
| ---------------------------------------------------------------------------------------------- | ---------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)                      | >= 0.12.21 |
| <a name="requirement_opentelekomcloud"></a> [opentelekomcloud](#requirement\_opentelekomcloud) | >= 1.23.6  |

## Providers

| Name                                              | Version |
| ------------------------------------------------- | ------- |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 1.0  |

## Modules

| Name                                                      | Source | Version |
| --------------------------------------------------------- | ------ | ------- |
| <a name="module_keypair"></a> [keypair](#module\_keypair) | ../../ |         |

## Resources

| Name                                                                                                            | Type     |
| --------------------------------------------------------------------------------------------------------------- | -------- |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

No inputs.

## Outputs

| Name                                                                       | Description             |
| -------------------------------------------------------------------------- | ----------------------- |
| <a name="output_keypair_name"></a> [keypair\_name](#output\_keypair\_name) | The Name of the KeyPair |
