terraform {
  backend "s3" {
    bucket  = "mybucketname"
    key     = "mytfstate"
    region  = "us-west-2"
    profile = "production"
  }
}
