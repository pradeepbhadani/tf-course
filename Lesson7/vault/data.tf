data "aws_security_group" "my_sg" {
  filter {
    name   = "group-name"
    values = ["my_security_group"]
  }
}

data "vault_generic_secret" "myrds_master_user" {
  path = "${var.vault_path}"
}
