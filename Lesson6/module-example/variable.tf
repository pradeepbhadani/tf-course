variable "profile" {
  description = "AWS Profile to use."
  type        = "string"
}

variable "region" {
  description = "AWS Region name"
  type        = "string"
  default     = "us-west-2"
}


variable "bucket_name" {
  description = "Name of S3 bucket."
  type        = "string"
  default     = ""
}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = "map"
}
