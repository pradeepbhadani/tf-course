variable "profile" {
  description = "AWS Profile to use."
  type        = "string"
}

variable "region" {
  description = "AWS Region name"
  type        = "string"
  default     = "us-west-2"
}

variable "aws_ami_id" {
  description = "AWS AMI Id"
  type        = "string"
  default     = "ami-d874e0a0"
}

variable "instance_type" {
  description = "Instance type"
  type        = "string"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID for spinning up AWS EC2 instance."
  type        = "string"
}

variable "keypair" {
  description = "AWS Keypair"
  type        = "string"
  default     = "testkeypair"
}

#Tags
variable "tags" {
  description = "A map of tags to apply to resources"
  type        = "map"
}
