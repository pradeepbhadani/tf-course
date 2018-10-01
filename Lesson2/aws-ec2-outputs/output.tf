output "instance_id" {
  value = "${aws_instance.my_instance.id}"
}

output "instance_private_ip" {
  value = "${aws_instance.my_instance.private_ip}"
}

output "instance_keypair" {
  value = "${aws_instance.my_instance.key_name}"
}
