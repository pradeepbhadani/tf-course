resource "null_resource" "hello-world" {
  triggers {
    always_run = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "echo Welcome to Terraform world !!"
  }
}
