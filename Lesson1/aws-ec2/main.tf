# Terraform AWS provider
# https://www.terraform.io/docs/providers/aws/
provider "aws" {
  profile = "env"
  region  = "us-west-2"
}

# Create AWS EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-d874e0a0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-12345" # Update this value with your subnet-id
  key_name      = "mykeypair"    # Update this value with your keypair name
}
