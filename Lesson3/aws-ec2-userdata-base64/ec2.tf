resource "aws_instance" "my_userdata_instance" {
  ami              = "${var.aws_ami_id}"
  instance_type    = "${var.instance_type}"
  subnet_id        = "${var.subnet_id}"
  key_name         = "${var.keypair}"
  tags             = "${var.tags}"
  security_groups  = "${var.security_groups}"
  user_data_base64 = "IyEvYmluL2Jhc2gKeXVtIHVwZGF0ZSAteQp5dW0gaW5zdGFsbCBodHRwZCAteQplY2hvICJXZWxjb21lIHRvIG15IEVDMiBpbnN0YW5jZSBjcmVhdGVkIGJ5IFRlcnJhZm9ybSBhbmQgYmFzZTY0IHVzZXJkYXRhIiA+PiAvdmFyL3d3dy9odG1sL2luZGV4Lmh0bWwKc2VydmljZSBodHRwZCBzdGFydApjaGtjb25maWcgaHR0cGQgb24="
}
