resource "aws_instance" "my_instance" {
  ami             = "${var.aws_ami_id}"
  instance_type   = "${var.instance_type}"
  subnet_id       = "${var.subnet_id}"
  key_name        = "${var.keypair}"
  tags            = "${var.tags}"
  security_groups = "${var.security_groups}"

  connection {
    host        = "${aws_instance.my_instance.private_ip}"
    user        = "ec2-user"
    private_key = "${file("your-key-location/keyname.pem")}"
    timeout     = "1m"
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Welcome to AWS EC2' > hello.txt ",
      "echo 'Logged in via Terraform' >> hello.txt ",
    ]
  }
}
