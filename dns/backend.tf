terraform {
  backend "s3" {
    bucket       = "infrahash-terraform-state-215848077383"
    key          = "dns/terraform.tfstate"
    region       = "us-east-2"
    encrypt      = true
    use_lockfile = true
  }
}