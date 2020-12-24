# Terraform apply

```Terraform
  terraform apply --auto-approve
module.sslcert_letsencrypt.tls_private_key.private_key: Creating...
module.sslcert_letsencrypt.tls_private_key.private_key: Creation complete after 0s [id=0219ab09288211329ec19edd3586d4bb4bc56a56]
module.sslcert_letsencrypt.acme_registration.reg: Creating...
aws_key_pair.ptfe-key: Creating...
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Creating...
module.vpc_aws.aws_vpc.ag_test: Creating...
aws_key_pair.ptfe-key: Creation complete after 0s [id=ptfe-key]
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Creation complete after 0s [id=tf200-nginxweb-key]
module.sslcert_letsencrypt.acme_registration.reg: Creation complete after 2s [id=https://acme-v02.api.letsencrypt.org/acme/acct/107335032]
module.sslcert_letsencrypt.acme_certificate.certificate: Creating...
module.vpc_aws.aws_vpc.ag_test: Creation complete after 2s [id=vpc-0324e260f9fe62b76]
module.vpc_aws.aws_internet_gateway.ag_test: Creating...
module.vpc_aws.aws_route_table.ag_test_route_table: Creating...
module.vpc_aws.aws_subnet.ag_test: Creating...
module.vpc_aws.aws_security_group.ag_test_elb: Creating...
module.vpc_aws.aws_security_group.ag_test: Creating...
module.vpc_aws.aws_route_table.ag_test_route_table: Creation complete after 0s [id=rtb-0fc5a9a472e2ccb49]
module.vpc_aws.aws_subnet.ag_test: Creation complete after 0s [id=subnet-0810b21dce6eff222]
module.vpc_aws.aws_route_table_association.ag_test_association: Creating...
module.vpc_aws.aws_route_table_association.ag_test_association: Creation complete after 0s [id=rtbassoc-08a86ac8120c9bf8b]
module.vpc_aws.aws_internet_gateway.ag_test: Creation complete after 0s [id=igw-06358ec267ab5f7d1]
module.vpc_aws.aws_route.ag_test_internet_access: Creating...
module.vpc_aws.aws_route.ag_test_internet_access: Creation complete after 1s [id=r-rtb-0fc5a9a472e2ccb491080289494]
module.vpc_aws.aws_security_group.ag_test_elb: Creation complete after 1s [id=sg-0907c26b6ce67b2a6]
module.vpc_aws.aws_security_group.ag_test: Creation complete after 1s [id=sg-0473ad471a0f0ff1c]
module.nginxweb.aws_instance.nginxweb[0]: Creating...
module.sslcert_letsencrypt.acme_certificate.certificate: Still creating... [10s elapsed]
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [10s elapsed]
module.sslcert_letsencrypt.acme_certificate.certificate: Creation complete after 15s [id=https://acme-v02.api.letsencrypt.org/acme/cert/041d238edbc01f44a366d635899fa3d017ca]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Creating...
module.sslcert_letsencrypt.local_file.ssl_cert_file: Creation complete after 0s [id=34d33890f664424cec74eb952e308d511b5d74b1]
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Creating...
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Creating...
aws_iam_server_certificate.cert: Creating...
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Creation complete after 0s [id=237a2155a741750dd130a1d150525489337fd996]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Creation complete after 0s [id=f552676d828e71eae8f9329e76a8ac80f05a679b]
module.nginxweb.aws_instance.nginxweb[0]: Provisioning with 'remote-exec'...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connecting to remote host via SSH...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Host: 18.156.200.76
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   User: ubuntu
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Password: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Private key: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Certificate: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   SSH Agent: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Checking Host Key: false
aws_iam_server_certificate.cert: Creation complete after 1s [id=ASCAUWVAZLGWXGTNL7WUB]
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [20s elapsed]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connecting to remote host via SSH...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Host: 18.156.200.76
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   User: ubuntu
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Password: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Private key: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Certificate: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   SSH Agent: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Checking Host Key: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connecting to remote host via SSH...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Host: 18.156.200.76
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   User: ubuntu
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Password: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Private key: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Certificate: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   SSH Agent: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Checking Host Key: false
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [30s elapsed]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connecting to remote host via SSH...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Host: 18.156.200.76
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   User: ubuntu
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Password: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Private key: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Certificate: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   SSH Agent: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Checking Host Key: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connected!
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Hit:1 http://archive.ubuntu.com/ubuntu bionic InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Waiting for headers] [Connecting to
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:2 http://archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [2 InRelease 14.2 kB/88.7 kB 16%] [C
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 242 kB] [2 InRelea
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 242 kB] [Waiting f
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:3 http://archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 242 kB] [3 InRelea
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 242 kB] [Waiting f
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:4 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 242 kB] [4 InRelea
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [4 InRelease 43.1 kB/88.7 kB 49%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [2 InRelease gpgv 88.7 kB] [4 InRele
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:5 http://archive.ubuntu.com/ubuntu bionic/universe amd64 Packages [8570 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [2 InRelease gpgv 88.7 kB] [5 Packag
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [2 InRelease gpgv 88.7 kB] [5 Packag
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages 373 kB/8570 kB 4%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [3 InRelease gpgv 74.6 kB] [5 Packag
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages 1000 kB/8570 kB 12%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [4 InRelease gpgv 88.7 kB] [5 Packag
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 39% [5 Packages 6496 kB/8570 kB 76%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:6 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [1453 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 47% [5 Packages 8570 kB/8570 kB 100%] [
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 47% [6 Packages 20.1 kB/1453 kB 1%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 47% [5 Packages store 0 B] [Waiting for
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:7 http://archive.ubuntu.com/ubuntu bionic/universe Translation-en [4941 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 47% [5 Packages store 0 B] [7 Translati
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:8 http://archive.ubuntu.com/ubuntu bionic/multiverse amd64 Packages [151 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 66% [5 Packages store 0 B] [8 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 66% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:9 http://archive.ubuntu.com/ubuntu bionic/multiverse Translation-en [108 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 66% [5 Packages store 0 B] [9 Translati
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 66% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:10 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 Packages [1790 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 66% [5 Packages store 0 B] [10 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 73% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:11 http://archive.ubuntu.com/ubuntu bionic-updates/main Translation-en [376 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 73% [5 Packages store 0 B] [11 Translat
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 74% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:12 http://archive.ubuntu.com/ubuntu bionic-updates/restricted amd64 Packages [206 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 74% [5 Packages store 0 B] [12 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 75% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:13 http://archive.ubuntu.com/ubuntu bionic-updates/restricted Translation-en [27.9 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 75% [5 Packages store 0 B] [13 Translat
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 75% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:14 http://archive.ubuntu.com/ubuntu bionic-updates/universe amd64 Packages [1697 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 75% [5 Packages store 0 B] [14 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 82% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:15 http://archive.ubuntu.com/ubuntu bionic-updates/universe Translation-en [357 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 82% [5 Packages store 0 B] [15 Translat
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:16 http://archive.ubuntu.com/ubuntu bionic-updates/multiverse amd64 Packages [35.6 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [16 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:17 http://archive.ubuntu.com/ubuntu bionic-updates/multiverse Translation-en [7180 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [17 Translat
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:18 http://archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [10.0 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [18 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:19 http://archive.ubuntu.com/ubuntu bionic-backports/main Translation-en [4764 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [19 Translat
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:20 http://archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [10.3 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [20 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:21 http://archive.ubuntu.com/ubuntu bionic-backports/universe Translation-en [4588 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [21 Translat
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 83% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 84% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 86% [5 Packages store 0 B] [6 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 86% [6 Packages 1093 kB/1453 kB 75%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 86% [7 Translation-en store 0 B] [6 Pac
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [7 Translation-en store 0 B] [6 Pac
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [Waiting for headers]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [8 Packages store 0 B] [Waiting for
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [Waiting for headers]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [9 Translation-en store 0 B] [Waiti
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [Waiting for headers]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [10 Packages store 0 B] [Waiting fo
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:22 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [284 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 88% [10 Packages store 0 B] [22 Transla
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 89% [22 Translation-en 156 kB/284 kB 55
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 89% [11 Translation-en store 0 B] [22 T
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 90% [22 Translation-en 245 kB/284 kB 86
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 90% [12 Packages store 0 B] [22 Transla
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 90% [22 Translation-en 278 kB/284 kB 98
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 90% [13 Translation-en store 0 B] [22 T
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:23 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [185 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 90% [13 Translation-en store 0 B] [23 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 90% [23 Packages 3626 B/185 kB 2%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 90% [14 Packages store 0 B] [23 Package
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:24 http://security.ubuntu.com/ubuntu bionic-security/restricted Translation-en [24.3 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 91% [14 Packages store 0 B] [24 Transla
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 91% [14 Packages store 0 B] [Waiting fo
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:25 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [1094 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 91% [14 Packages store 0 B] [25 Package
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 92% [25 Packages 43.4 kB/1094 kB 4%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 92% [15 Translation-en store 0 B] [25 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 92% [25 Packages 113 kB/1094 kB 10%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 92% [16 Packages store 0 B] [25 Package
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 92% [25 Packages 119 kB/1094 kB 11%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 92% [17 Translation-en store 0 B] [25 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [25 Packages 122 kB/1094 kB 11%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [18 Packages store 0 B] [25 Package
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [25 Packages 124 kB/1094 kB 11%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [19 Translation-en store 0 B] [25 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [25 Packages 124 kB/1094 kB 11%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [20 Packages store 0 B] [25 Package
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [25 Packages 126 kB/1094 kB 12%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [21 Translation-en store 0 B] [25 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [25 Packages 126 kB/1094 kB 12%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [6 Packages store 0 B] [25 Packages
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [25 Packages 287 kB/1094 kB 26%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [22 Translation-en store 0 B] [25 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [25 Packages 339 kB/1094 kB 31%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [23 Packages store 0 B] [25 Package
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [25 Packages 356 kB/1094 kB 33%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [24 Translation-en store 0 B] [25 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [25 Packages 359 kB/1094 kB 33%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [25 Packages 672 kB/1094 kB 61%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [25 Packages 980 kB/1094 kB 90%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:26 http://security.ubuntu.com/ubuntu bionic-security/universe Translation-en [244 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [26 Translation-en 759 B/244 kB 0%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [25 Packages store 0 B] [26 Transla
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [26 Translation-en 102 kB/244 kB 42
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [Working]              3525 kB/s 0s
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:27 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [12.8 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [27 Packages 2420 B/12.8 kB 19%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [26 Translation-en store 0 B] [27 P
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [26 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:28 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [2872 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [26 Translation-en store 0 B] [28 T
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [26 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]             3525 kB/s 0s
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [27 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]             3525 kB/s 0s
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [28 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]             3525 kB/s 0s
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Fetched 21.8 MB in 6s (3499 kB/s)
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [40s elapsed]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 37%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 37%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 57%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 57%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 57%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 57%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 57%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 57%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 65%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 65%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 70%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 70%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 71%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 71%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 71%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 71%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 78%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 78%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 81%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 83%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 87%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 87%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 91%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 91%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 92%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 92%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 93%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 93%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 97%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 97%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 99%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 99%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 99%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 99%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 99%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 99%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... Done
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 50%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 50%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... Done
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 12 packages can be upgraded. Run 'apt list --upgradable' to see them.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 32%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 32%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 55%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 55%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 60%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 60%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 61%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 61%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 86%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 86%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 97%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 97%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 97%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 97%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 98%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 98%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... Done
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 50%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 50%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... Done
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): The following additional packages will be installed:
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-echo nginx-common
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   nginx-light
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Suggested packages:
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   fcgiwrap nginx-doc ssl-cert
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): The following NEW packages will be installed:
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-echo nginx
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   nginx-common nginx-light
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0 upgraded, 4 newly installed, 0 to remove and 3 not upgraded.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Need to get 452 kB of archives.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): After this operation, 1554 kB of additional disk space will be used.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:1 http://security.ubuntu.com/ubuntu bionic-security/main amd64 nginx-common all 1.14.0-0ubuntu1.7 [37.4 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 3% [1 nginx-common 14.2 kB/37.4 kB 38%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 12% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:2 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 libnginx-mod-http-echo amd64 1.14.0-0ubuntu1.7 [21.3 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 13% [2 libnginx-mod-http-echo 5541 B/21
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 20% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:3 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 nginx-light amd64 1.14.0-0ubuntu1.7 [390 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 21% [3 nginx-light 1368 B/390 kB 0%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:4 http://security.ubuntu.com/ubuntu bionic-security/main amd64 nginx all 1.14.0-0ubuntu1.7 [3596 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Fetched 452 kB in 0s (1152 kB/s)
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preconfiguring packages ...
                                                        Selecting previously unselected package nginx-common..nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 5%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 10%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 15%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 20%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 25%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 30%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 35%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 40%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 45%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 50%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 55%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 60%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 65%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 70%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 75%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 80%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 85%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 90%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 95%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 100%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): (Reading database ... 57098 files and directories currently installed.)
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../nginx-common_1.14.0-0ubuntu1.7_all.deb ...
Progress: [  5%] [..................] 0] (remote-exec): Unpacking nginx-common (1.14.0-0ubuntu1.7) ...
Progress: [ 14%] [##................] 0] (remote-exec): Selecting previously unselected package libnginx-mod-http-echo.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../libnginx-mod-http-echo_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 19%] [###...............] 0] (remote-exec): Unpacking libnginx-mod-http-echo (1.14.0-0ubuntu1.7) ...
Progress: [ 29%] [#####.............] 0] (remote-exec): Selecting previously unselected package nginx-light.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../nginx-light_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 33%] [#####.............] 0] (remote-exec): Unpacking nginx-light (1.14.0-0ubuntu1.7) ...
Progress: [ 43%] [#######...........] 0] (remote-exec): Selecting previously unselected package nginx.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../nginx_1.14.0-0ubuntu1.7_all.deb ...
Progress: [ 48%] [########..........] 0] (remote-exec): Unpacking nginx (1.14.0-0ubuntu1.7) ...
Progress: [ 57%] [##########........] 0] (remote-exec): Setting up nginx-common (1.14.0-0ubuntu1.7) ...
Progress: [ 62%] [###########.......] 0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /lib/systemd/system/nginx.service.
Progress: [ 67%] [###########.......] 0] (remote-exec): Setting up libnginx-mod-http-echo (1.14.0-0ubuntu1.7) ...
Progress: [ 76%] [#############.....] 0] (remote-exec): Setting up nginx-light (1.14.0-0ubuntu1.7) ...
Progress: [ 81%] [##############....] 0] (remote-exec):
Progress: [ 86%] [###############...] 0] (remote-exec): Setting up nginx (1.14.0-0ubuntu1.7) ...
Progress: [ 95%] [#################.] 0] (remote-exec): Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Processing triggers for ufw (0.36-0ubuntu0.18.04.1) ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Processing triggers for ureadahead (0.100.0-21) ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Processing triggers for systemd (237-3ubuntu10.43) ...

module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Rules updated
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Rules updated (v6)
module.nginxweb.aws_instance.nginxweb[0]: Creation complete after 45s [id=i-08c0a4dc6ae6509fa]
null_resource.prepare_folder: Creating...
null_resource.make_providers_local_mirror: Creating...
module.dns_cloudflare.cloudflare_record.site_backend: Creating...
null_resource.make_providers_local_mirror: Provisioning with 'local-exec'...
null_resource.prepare_folder: Provisioning with 'remote-exec'...
aws_elb.mirror_lb: Creating...
null_resource.prepare_folder (remote-exec): Connecting to remote host via SSH...
null_resource.prepare_folder (remote-exec):   Host: 18.156.200.76
null_resource.prepare_folder (remote-exec):   User: ubuntu
null_resource.prepare_folder (remote-exec):   Password: false
null_resource.prepare_folder (remote-exec):   Private key: true
null_resource.prepare_folder (remote-exec):   Certificate: false
null_resource.prepare_folder (remote-exec):   SSH Agent: true
null_resource.prepare_folder (remote-exec):   Checking Host Key: false
null_resource.make_providers_local_mirror (local-exec): Executing: ["/bin/sh" "-c" "mkdir -p mirror-content;  terraform providers mirror mirror-content"]
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/tls...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.0.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.prepare_folder (remote-exec): Connected!
null_resource.prepare_folder: Creation complete after 1s [id=6085264568972624155]
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring vancluever/acme...
null_resource.make_providers_local_mirror (local-exec):   - Selected v1.6.3 to meet constraints 1.6.3
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
module.dns_cloudflare.cloudflare_record.site_backend: Creation complete after 2s [id=60ebc6211b4a911ce1874c8a6335a29f]
aws_elb.mirror_lb: Creation complete after 5s [id=ag-clb-tf-repo-mirror-1]
module.dns_cloudflare.cloudflare_record.site_lb: Creating...
module.dns_cloudflare.cloudflare_record.site_lb: Creation complete after 2s [id=836a673006a6ede617c6fb6b1ac3c0ba]
null_resource.make_providers_local_mirror: Still creating... [10s elapsed]
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: self-signed
null_resource.make_providers_local_mirror (local-exec): - Mirroring cloudflare/cloudflare...
null_resource.make_providers_local_mirror (local-exec):   - Selected v2.14.0 to meet constraints 2.14.0
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by a HashiCorp partner
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/null...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.0.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/aws...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.22.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror: Still creating... [20s elapsed]
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/local...
null_resource.make_providers_local_mirror (local-exec):   - Selected v2.0.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec):
null_resource.make_providers_local_mirror (local-exec): Warning: Interpolation-only expressions are deprecated

null_resource.make_providers_local_mirror (local-exec):   on lb.tf line 6, in resource "aws_elb" "mirror_lb":
null_resource.make_providers_local_mirror (local-exec):    6:   security_groups = ["${module.vpc_aws.elb_security_group_id}"]
null_resource.make_providers_local_mirror (local-exec):
null_resource.make_providers_local_mirror (local-exec): Terraform 0.11 and earlier required all non-constant expressions to be
null_resource.make_providers_local_mirror (local-exec): provided via interpolation syntax, but this pattern is now deprecated. To
null_resource.make_providers_local_mirror (local-exec): silence this warning, remove the "${ sequence from the start and the }"
null_resource.make_providers_local_mirror (local-exec): sequence from the end of this expression, leaving just the inner expression.

null_resource.make_providers_local_mirror (local-exec): Template interpolation syntax is still used to construct strings from
null_resource.make_providers_local_mirror (local-exec): expressions when the template includes multiple interpolation sequences or a
null_resource.make_providers_local_mirror (local-exec): mixture of literal strings and interpolations. This deprecation applies only
null_resource.make_providers_local_mirror (local-exec): to templates that consist entirely of a single interpolation sequence.

null_resource.make_providers_local_mirror (local-exec): (and 32 more similar warnings elsewhere)
null_resource.make_providers_local_mirror (local-exec):
null_resource.make_providers_local_mirror: Creation complete after 30s [id=8026987810024962086]
null_resource.copy_mirror_to_server: Creating...
null_resource.copy_mirror_to_server: Provisioning with 'file'...
null_resource.copy_mirror_to_server: Still creating... [10s elapsed]
null_resource.copy_mirror_to_server: Still creating... [20s elapsed]
null_resource.copy_mirror_to_server: Still creating... [30s elapsed]
null_resource.copy_mirror_to_server: Creation complete after 32s [id=4188033109107491539]

Warning: Interpolation-only expressions are deprecated

  on lb.tf line 6, in resource "aws_elb" "mirror_lb":
   6:   security_groups = ["${module.vpc_aws.elb_security_group_id}"]

Terraform 0.11 and earlier required all non-constant expressions to be
provided via interpolation syntax, but this pattern is now deprecated. To
silence this warning, remove the "${ sequence from the start and the }"
sequence from the end of this expression, leaving just the inner expression.

Template interpolation syntax is still used to construct strings from
expressions when the template includes multiple interpolation sequences or a
mixture of literal strings and interpolations. This deprecation applies only
to templates that consist entirely of a single interpolation sequence.

(and 32 more similar warnings elsewhere)


Apply complete! Resources: 24 added, 0 changed, 0 destroyed.

Outputs:

backend_fqdn = "tf-repo-mirror-1_backend.guselietov.com"
cert_url = "https://acme-v02.api.letsencrypt.org/acme/cert/041d238edbc01f44a366d635899fa3d017ca"
full_site_name = "tf-repo-mirror-1.guselietov.com"
loadbalancer_fqdn = "ag-clb-tf-repo-mirror-1-1100703919.eu-central-1.elb.amazonaws.com"
public_dns = [
  "ec2-18-156-200-76.eu-central-1.compute.amazonaws.com",
]
public_ips = [
  "18.156.200.76",
]
```
