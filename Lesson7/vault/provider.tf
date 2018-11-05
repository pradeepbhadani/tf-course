provider "aws" {
  profile = "${var.profile}"
  region  = "${var.region}"
}

provider "vault" {
  address         = "${var.vault_addr}"
  skip_tls_verify = "true"
}
