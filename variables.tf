################
# Key Pair Vars
################

variable "prefix" {
  type        = string
  description = "(optional) prefix for keypair"

  default = "default"
}

variable "create_keypair" {
  type        = bool
  description = "(optional) controls if key pair should be created"

  default = true
}

variable "public_key" {
  type        = string
  description = "(optional) the public key material"

  default = ""
}
