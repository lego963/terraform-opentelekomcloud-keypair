output "keypair_name" {
  description = "The Name of the KeyPair"
  value       = concat(opentelekomcloud_compute_keypair_v2.this.*.name, [""])[0]
}
