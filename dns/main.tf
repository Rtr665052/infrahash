terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.34.0, < 6.0.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.33"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.13"
    }
  }
}

# --- Providers ---

provider "aws" {
  region = var.aws_region
}

# --- Create Route 53 record ---

data "aws_route53_zone" "zone" {
  name         = "animals4lifecoaching.com."
  private_zone = false
}

data "aws_lb" "infrahash_alb" {
  tags = {
    "ingress.k8s.aws/stack" = "default/infrahash-ingress"
  }
}

resource "aws_route53_record" "infrahash" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "infrahash.animals4lifecoaching.com"
  type    = "A"

  alias {
    name                   = data.aws_lb.infrahash_alb.dns_name
    zone_id                = data.aws_lb.infrahash_alb.zone_id
    evaluate_target_health = true
  }
}
