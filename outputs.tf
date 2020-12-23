output "cert_url" {
  value = "${module.sslcert_letsencrypt.cert_url}"
}

output "full_site_name" {
  value = "${var.site_record}.${var.site_domain}"
}

output "loadbalancer_fqdn" {
  value       = aws_elb.mirror_lb.dns_name
  description = "The domain name of the load balancer"
}

output "backend_fqdn" {
  value = "${module.dns_cloudflare.backend_fqdn}"
}


output "public_ips" {
  value = module.nginxweb.public_ips
}

output "public_dns" {
  value = module.nginxweb.public_dns
}