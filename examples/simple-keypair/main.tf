# Configure the OpenTelekomCloud Provider
provider "opentelekomcloud" {
  cloud = "otc"
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "keypair" {
  source = "../../"

  public_key = tls_private_key.this.public_key_openssh
}
