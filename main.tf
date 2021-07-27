###########
# Key Pair
###########
resource "opentelekomcloud_compute_keypair_v2" "this" {
  count = var.create_keypair ? 1 : 0

  name       = "${var.prefix}_keypair"
  public_key = var.public_key
}
