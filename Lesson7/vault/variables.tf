variable "profile" {
  description = "AWS Profile to use."
  type        = "string"
}

variable "region" {
  description = "AWS Region name."
  type        = "string"
  default     = "us-west-2"
}

variable "db_instance_class" {
  description = "Instance type for the RDS."
  type        = "string"
  default     = "db.t2.micro"
}

variable "subnets" {
  description = "A list of VPC subnet IDs"
  type        = "list"
}

variable "vault_addr" {
  description = "Address of Vault server for secrets."
  type        = "string"
}

variable "vault_path" {
  description = "Path to secrets in Vault."
  type        = "string"
}

#Tags
variable "tags" {
  description = "A map of tags to apply to resources."
  type        = "map"
}
