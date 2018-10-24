terraform {
  backend "s3" {
    bucket  = "mybucketname"
    key     = "mytfstatefile"
    region  = "us-west-2"
    profile = "test"
  }
}
