module "s3-module" {
  source      = "module/s3"
  bucket_name = "${var.bucket_name}"
  tags        = "${var.tags}"
}
