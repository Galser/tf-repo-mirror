# Outputs for Nginxweb , demo module

output "public_ips" {
  value = "${aws_instance.nginxweb[*].public_ip}"
}

output "public_dns" {
  value = "${aws_instance.nginxweb[*].public_dns}"
}

output "id" { 
  value = "${aws_instance.nginxweb[*].id}"
}
