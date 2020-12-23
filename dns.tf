# Network : DNS CloudFlare
module "dns_cloudflare" {
  source = "./modules/dns_cloudflare"

  host         = var.site_record
  domain       = var.site_domain
  cname_target = aws_elb.mirror_lb.dns_name
  record_ip    = module.nginxweb.public_ips[0]
}
