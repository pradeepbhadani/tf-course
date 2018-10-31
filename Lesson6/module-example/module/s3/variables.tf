variable "region" {
  description = "AWS Region name"
  type        = "string"
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "Name of S3 bucket."
  type        = "string"
}

#Tags
variable "tags" {
  description = "A map of tags to apply to resources"
  type        = "map"
}

variable "non-current-version-file-retention-period" {
  description = "Retention period for non-current version object"
  type        = "string"
  default     = "7"
}

variable "bucket_policy" {
  description = "S3 bucket policy to attach"
  type        = "string"
  default     = ""
}
