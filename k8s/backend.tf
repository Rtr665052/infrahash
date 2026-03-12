terraform {
  backend "s3" {
    bucket       = "infrahash-terraform-state-215848077383"
    key          = "k8s/terraform.tfstate"
    region       = "us-east-2"
    encrypt      = true
    use_lockfile = true
  }
}