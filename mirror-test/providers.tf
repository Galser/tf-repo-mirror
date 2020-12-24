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
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
  # STAGING
  # "https://acme-staging-v02.api.letsencrypt.org/directory"
}

provider "aws" {
  region = "eu-central-1" // not important for test at all
}

