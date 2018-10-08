data "aws_security_group" "my_sg" {
  filter {
    name   = "group-name"
    values = ["my_security_group"]
  }
}
