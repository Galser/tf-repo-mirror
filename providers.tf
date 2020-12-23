terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "2.14.0"
    }
    acme = {
      source = "vancluever/acme"
      version = "1.6.3"
    }		
  }
}

provider "acme" {
  # PRODUCTION
#  version    = "~> 1.0"
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
  # STAGING
  # "https://acme-staging-v02.api.letsencrypt.org/directory"
}

provider "aws" {
  region = var.region
}

