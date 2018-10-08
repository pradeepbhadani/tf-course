resource "aws_instance" "my_userdata_instance" {
  ami             = "${var.aws_ami_id}"
  instance_type   = "${var.instance_type}"
  subnet_id       = "${var.subnet_id}"
  key_name        = "${var.keypair}"
  tags            = "${var.tags}"
  security_groups = "${var.security_groups}"

  user_data = <<EOF
#!/bin/bash
yum update -y
yum install httpd -y
echo "Welcome to my EC2 instance created by Terraform" >> /var/www/html/index.html
service httpd start
chkconfig httpd on
EOF
}
