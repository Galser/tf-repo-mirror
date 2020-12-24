# Certificate : SSL from Let'sEncrypt
module "sslcert_letsencrypt" {
  source = "./modules/sslcert_letsencrypt"

  host         = var.site_record
  domain       = var.site_domain
  dns_provider = "cloudflare"
}


resource "aws_iam_server_certificate" "cert" {
  name_prefix       = var.site_domain
  certificate_body  = module.sslcert_letsencrypt.cert_pem
  private_key       = module.sslcert_letsencrypt.cert_private_key_pem
  #certificate_chain = module.sslcert_letsencrypt.chain
  # Some properties of an IAM Server Certificates cannot be updated while they
  # are in use. In order for Terraform to effectively manage a Certificate in
  # this situation, it is recommended you utilize the name_prefix attribute and
  # enable the create_before_destroy lifecycle block.
  lifecycle {
    create_before_destroy = true
  }
}