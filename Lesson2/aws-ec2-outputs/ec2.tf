resource "aws_instance" "my_instance" {
  ami           = "${var.aws_ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"
  key_name      = "${var.keypair}"
  tags          = "${var.tags}"
}
