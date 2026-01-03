terraform {
  backend "gcs" {
    bucket  = "backup8830"
    prefix  = "prod"
  }
}
