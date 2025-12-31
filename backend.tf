terraform {
  backend "gcs" {
    bucket  = "akash-bucket-7551"
    prefix  = "gcp/simple-project"
  }
}
