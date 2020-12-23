output "public_ips" {
  value = "${module.nginxweb.public_ips}"
}

output "public_dns" {
  value = "${module.nginxweb.public_dns}"
}