# Terraform apply

```Terraform

 terraform apply --auto-approve
module.sslcert_letsencrypt.tls_private_key.private_key: Refreshing state... [id=0d9d246c47c56490e8a011b32e41726059396aba]
module.sslcert_letsencrypt.acme_registration.reg: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/acct/107316390]
module.sslcert_letsencrypt.acme_certificate.certificate: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/cert/04fd9dcc83ea68bb41d8b1a6107aa7f37fc3]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Refreshing state... [id=dcf078d8d08117f35bca7de453e3712737352cfb]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Refreshing state... [id=873900cf5c860fb6a07f4ae3332ff55cff386f93]
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Refreshing state... [id=ec207a9dcda73fb44325e8675119a2016448a26b]
aws_key_pair.ptfe-key: Refreshing state... [id=ptfe-key]
aws_iam_server_certificate.cert: Refreshing state... [id=ASCAUWVAZLGWUWJCMO4CA]
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Refreshing state... [id=tf200-nginxweb-key]
module.vpc_aws.aws_vpc.ag_test: Refreshing state... [id=vpc-0cbff2c2adf87b474]
module.vpc_aws.aws_internet_gateway.ag_test: Refreshing state... [id=igw-0f780e3aad4fc29aa]
module.vpc_aws.aws_route_table.ag_test_route_table: Refreshing state... [id=rtb-0c5430a1e67b6507d]
module.vpc_aws.aws_subnet.ag_test: Refreshing state... [id=subnet-09cd5529e7ae10388]
module.vpc_aws.aws_security_group.ag_test_elb: Refreshing state... [id=sg-09be29bf0165df601]
module.vpc_aws.aws_security_group.ag_test: Refreshing state... [id=sg-0f42ca83aefbddafb]
module.vpc_aws.aws_route_table_association.ag_test_association: Refreshing state... [id=rtbassoc-05ed78cb2b48e0c87]
module.vpc_aws.aws_route.ag_test_internet_access: Refreshing state... [id=r-rtb-0c5430a1e67b6507d1080289494]
module.nginxweb.aws_instance.nginxweb[0]: Refreshing state... [id=i-0ac362d09561daa31]
module.dns_cloudflare.cloudflare_record.site_backend: Refreshing state... [id=fc1d807f191e498f317e82123a9bb093]
aws_elb.mirror_lb: Refreshing state... [id=ag-clb-tf-repo-mirror-1]
module.dns_cloudflare.cloudflare_record.site_lb: Refreshing state... [id=a67d2c1ce25472816393cd74d2193aba]
null_resource.make_providers_local_mirror: Creating...
null_resource.make_providers_local_mirror: Provisioning with 'local-exec'...
null_resource.make_providers_local_mirror (local-exec): Executing: ["/bin/sh" "-c" "mkdir -p mirror-content;  terraform providers mirror mirror-content"]
null_resource.make_providers_local_mirror (local-exec): - Mirroring vancluever/acme...
null_resource.make_providers_local_mirror (local-exec):   - Selected v1.6.3 to meet constraints 1.6.3
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: self-signed
null_resource.make_providers_local_mirror (local-exec): - Mirroring cloudflare/cloudflare...
null_resource.make_providers_local_mirror (local-exec):   - Selected v2.14.0 to meet constraints 2.14.0
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror: Still creating... [10s elapsed]
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by a HashiCorp partner
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/aws...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.22.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/null...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.0.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/tls...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.0.0 with no constraints
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
null_resource.make_providers_local_mirror: Creation complete after 23s [id=493476016913744808]
null_resource.copy_mirror_to_server: Creating...

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


Error: Invalid index: The given key does not identify an element in this collection value.


 ✘  ~/labs/skills/tf-repo-mirror   f-make-test ●  terraform apply --auto-approve

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


Error: Unsupported attribute

  on main.tf line 64, in resource "null_resource" "copy_mirror_to_server":
  64:     host        = element(module.nginxweb.public_ip.*,0)

This object does not have an attribute named "public_ip".

 ✘  ~/labs/skills/tf-repo-mirror   f-make-test ●  terraform apply --auto-approve
module.sslcert_letsencrypt.tls_private_key.private_key: Refreshing state... [id=0d9d246c47c56490e8a011b32e41726059396aba]
module.sslcert_letsencrypt.acme_registration.reg: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/acct/107316390]
module.sslcert_letsencrypt.acme_certificate.certificate: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/cert/04fd9dcc83ea68bb41d8b1a6107aa7f37fc3]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Refreshing state... [id=873900cf5c860fb6a07f4ae3332ff55cff386f93]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Refreshing state... [id=dcf078d8d08117f35bca7de453e3712737352cfb]
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Refreshing state... [id=ec207a9dcda73fb44325e8675119a2016448a26b]
aws_key_pair.ptfe-key: Refreshing state... [id=ptfe-key]
aws_iam_server_certificate.cert: Refreshing state... [id=ASCAUWVAZLGWUWJCMO4CA]
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Refreshing state... [id=tf200-nginxweb-key]
module.vpc_aws.aws_vpc.ag_test: Refreshing state... [id=vpc-0cbff2c2adf87b474]
module.vpc_aws.aws_internet_gateway.ag_test: Refreshing state... [id=igw-0f780e3aad4fc29aa]
module.vpc_aws.aws_subnet.ag_test: Refreshing state... [id=subnet-09cd5529e7ae10388]
module.vpc_aws.aws_route_table.ag_test_route_table: Refreshing state... [id=rtb-0c5430a1e67b6507d]
module.vpc_aws.aws_security_group.ag_test_elb: Refreshing state... [id=sg-09be29bf0165df601]
module.vpc_aws.aws_security_group.ag_test: Refreshing state... [id=sg-0f42ca83aefbddafb]
module.vpc_aws.aws_route.ag_test_internet_access: Refreshing state... [id=r-rtb-0c5430a1e67b6507d1080289494]
module.vpc_aws.aws_route_table_association.ag_test_association: Refreshing state... [id=rtbassoc-05ed78cb2b48e0c87]
module.nginxweb.aws_instance.nginxweb[0]: Refreshing state... [id=i-0ac362d09561daa31]
null_resource.make_providers_local_mirror: Refreshing state... [id=493476016913744808]
aws_elb.mirror_lb: Refreshing state... [id=ag-clb-tf-repo-mirror-1]
module.dns_cloudflare.cloudflare_record.site_backend: Refreshing state... [id=fc1d807f191e498f317e82123a9bb093]
null_resource.copy_mirror_to_server: Refreshing state... [id=6571512798816618129]
module.dns_cloudflare.cloudflare_record.site_lb: Refreshing state... [id=a67d2c1ce25472816393cd74d2193aba]
null_resource.copy_mirror_to_server: Destroying... [id=6571512798816618129]
null_resource.copy_mirror_to_server: Destruction complete after 0s
null_resource.copy_mirror_to_server: Creating...
null_resource.copy_mirror_to_server: Provisioning with 'file'...


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


Error: Upload failed: scp: /var/www/html/registry.terraform.io: Permission denied


 ✘  ~/labs/skills/tf-repo-mirror   f-make-test ●  terraform apply --auto-approve
module.sslcert_letsencrypt.tls_private_key.private_key: Refreshing state... [id=0d9d246c47c56490e8a011b32e41726059396aba]
module.sslcert_letsencrypt.acme_registration.reg: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/acct/107316390]
module.sslcert_letsencrypt.acme_certificate.certificate: Refreshing state... [id=https://acme-v02.api.letsencrypt.org/acme/cert/04fd9dcc83ea68bb41d8b1a6107aa7f37fc3]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Refreshing state... [id=873900cf5c860fb6a07f4ae3332ff55cff386f93]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Refreshing state... [id=dcf078d8d08117f35bca7de453e3712737352cfb]
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Refreshing state... [id=ec207a9dcda73fb44325e8675119a2016448a26b]
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Refreshing state... [id=tf200-nginxweb-key]
aws_key_pair.ptfe-key: Refreshing state... [id=ptfe-key]
aws_iam_server_certificate.cert: Refreshing state... [id=ASCAUWVAZLGWUWJCMO4CA]
module.vpc_aws.aws_vpc.ag_test: Refreshing state... [id=vpc-0cbff2c2adf87b474]
module.vpc_aws.aws_internet_gateway.ag_test: Refreshing state... [id=igw-0f780e3aad4fc29aa]
module.vpc_aws.aws_subnet.ag_test: Refreshing state... [id=subnet-09cd5529e7ae10388]
module.vpc_aws.aws_route_table.ag_test_route_table: Refreshing state... [id=rtb-0c5430a1e67b6507d]
module.vpc_aws.aws_security_group.ag_test_elb: Refreshing state... [id=sg-09be29bf0165df601]
module.vpc_aws.aws_security_group.ag_test: Refreshing state... [id=sg-0f42ca83aefbddafb]
module.vpc_aws.aws_route.ag_test_internet_access: Refreshing state... [id=r-rtb-0c5430a1e67b6507d1080289494]
module.vpc_aws.aws_route_table_association.ag_test_association: Refreshing state... [id=rtbassoc-05ed78cb2b48e0c87]
module.nginxweb.aws_instance.nginxweb[0]: Refreshing state... [id=i-0ac362d09561daa31]
null_resource.make_providers_local_mirror: Refreshing state... [id=493476016913744808]
module.dns_cloudflare.cloudflare_record.site_backend: Refreshing state... [id=fc1d807f191e498f317e82123a9bb093]
aws_elb.mirror_lb: Refreshing state... [id=ag-clb-tf-repo-mirror-1]
null_resource.copy_mirror_to_server: Refreshing state... [id=3288516402818167860]
module.dns_cloudflare.cloudflare_record.site_lb: Refreshing state... [id=a67d2c1ce25472816393cd74d2193aba]
null_resource.copy_mirror_to_server: Destroying... [id=3288516402818167860]
null_resource.copy_mirror_to_server: Destruction complete after 0s
null_resource.prepare_folder: Creating...
null_resource.prepare_folder: Provisioning with 'remote-exec'...
null_resource.prepare_folder (remote-exec): Connecting to remote host via SSH...
null_resource.prepare_folder (remote-exec):   Host: 18.158.59.132
null_resource.prepare_folder (remote-exec):   User: ubuntu
null_resource.prepare_folder (remote-exec):   Password: false
null_resource.prepare_folder (remote-exec):   Private key: true
null_resource.prepare_folder (remote-exec):   Certificate: false
null_resource.prepare_folder (remote-exec):   SSH Agent: true
null_resource.prepare_folder (remote-exec):   Checking Host Key: false
null_resource.prepare_folder (remote-exec): Connected!
null_resource.prepare_folder: Creation complete after 1s [id=5661679292396494543]
null_resource.copy_mirror_to_server: Creating...
null_resource.copy_mirror_to_server: Provisioning with 'file'...
null_resource.copy_mirror_to_server: Still creating... [10s elapsed]
null_resource.copy_mirror_to_server: Still creating... [20s elapsed]
null_resource.copy_mirror_to_server: Still creating... [30s elapsed]
null_resource.copy_mirror_to_server: Creation complete after 32s [id=2699141734401670110]

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


Apply complete! Resources: 2 added, 0 changed, 1 destroyed.

Outputs:

backend_fqdn = "tf-repo-mirror-1_backend.guselietov.com"
cert_url = "https://acme-v02.api.letsencrypt.org/acme/cert/04fd9dcc83ea68bb41d8b1a6107aa7f37fc3"
full_site_name = "tf-repo-mirror-1.guselietov.com"
loadbalancer_fqdn = "ag-clb-tf-repo-mirror-1-1113950476.eu-central-1.elb.amazonaws.com"
public_dns = [
  "ec2-18-158-59-132.eu-central-1.compute.amazonaws.com",
]
public_ips = [
  "18.158.59.132",
]
 ~/labs/skills/tf-repo-mirror   f-make-test ●  ssh ubuntu@tf-repo-mirror-1_backend.guselietov.com
Welcome to Ubuntu 18.04.5 LTS (GNU/Linux 5.4.0-1029-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Dec 24 15:30:48 UTC 2020

  System load:  0.0               Processes:           102
  Usage of /:   19.6% of 7.69GB   Users logged in:     0
  Memory usage: 2%                IP address for ens5: 10.1.0.193
  Swap usage:   0%

 * Introducing self-healing high availability clusters in MicroK8s.
   Simple, hardened, Kubernetes for production, from RaspberryPi to DC.

     https://microk8s.io/high-availability

11 packages can be updated.
7 updates are security updates.

New release '20.04.1 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Thu Dec 24 15:29:48 2020 from 77.162.119.95
ubuntu@ip-10-1-0-193:~$ sudo su -
root@ip-10-1-0-193:~# ls -l /var/
backups/ cache/   crash/   lib/     local/   lock/    log/     mail/    opt/     run/     snap/    spool/   tmp/     www/
root@ip-10-1-0-193:~# ls -l /var/www/html/registry.terraform.io/
total 12
drwxr-xr-x 3 ubuntu ubuntu 4096 Dec 24 15:30 cloudflare
drwxr-xr-x 6 ubuntu ubuntu 4096 Dec 24 15:29 hashicorp
drwxr-xr-x 3 ubuntu ubuntu 4096 Dec 24 15:30 vancluever
root@ip-10-1-0-193:~# ls -l /var/www/html/registry.terraform.io^C
root@ip-10-1-0-193:~# logout
ubuntu@ip-10-1-0-193:~$ logout
Connection to tf-repo-mirror-1_backend.guselietov.com closed.
 ✘  ~/labs/skills/tf-repo-mirror   f-destory-and-readme-add  terraform destroy --auto-approve
module.dns_cloudflare.cloudflare_record.site_backend: Destroying... [id=fc1d807f191e498f317e82123a9bb093]
module.dns_cloudflare.cloudflare_record.site_lb: Destroying... [id=a67d2c1ce25472816393cd74d2193aba]
module.dns_cloudflare.cloudflare_record.site_lb: Destruction complete after 1s
module.dns_cloudflare.cloudflare_record.site_backend: Destruction complete after 1s
module.vpc_aws.aws_route_table_association.ag_test_association: Destroying... [id=rtbassoc-05ed78cb2b48e0c87]
aws_key_pair.ptfe-key: Destroying... [id=ptfe-key]
module.vpc_aws.aws_route.ag_test_internet_access: Destroying... [id=r-rtb-0c5430a1e67b6507d1080289494]
aws_elb.mirror_lb: Destroying... [id=ag-clb-tf-repo-mirror-1]
module.vpc_aws.aws_route.ag_test_internet_access: Destruction complete after 1s
module.vpc_aws.aws_internet_gateway.ag_test: Destroying... [id=igw-0f780e3aad4fc29aa]
aws_key_pair.ptfe-key: Destruction complete after 1s
module.vpc_aws.aws_route_table_association.ag_test_association: Destruction complete after 1s
module.vpc_aws.aws_route_table.ag_test_route_table: Destroying... [id=rtb-0c5430a1e67b6507d]
module.vpc_aws.aws_route_table.ag_test_route_table: Destruction complete after 0s
aws_elb.mirror_lb: Destruction complete after 1s
aws_iam_server_certificate.cert: Destroying... [id=ASCAUWVAZLGWUWJCMO4CA]
module.vpc_aws.aws_security_group.ag_test_elb: Destroying... [id=sg-09be29bf0165df601]
module.nginxweb.aws_instance.nginxweb[0]: Destroying... [id=i-0ac362d09561daa31]
module.vpc_aws.aws_internet_gateway.ag_test: Still destroying... [id=igw-0f780e3aad4fc29aa, 10s elapsed]
module.nginxweb.aws_instance.nginxweb[0]: Still destroying... [id=i-0ac362d09561daa31, 10s elapsed]
module.vpc_aws.aws_security_group.ag_test_elb: Still destroying... [id=sg-09be29bf0165df601, 10s elapsed]
module.vpc_aws.aws_security_group.ag_test_elb: Destruction complete after 18s
module.vpc_aws.aws_internet_gateway.ag_test: Still destroying... [id=igw-0f780e3aad4fc29aa, 20s elapsed]
module.nginxweb.aws_instance.nginxweb[0]: Still destroying... [id=i-0ac362d09561daa31, 20s elapsed]
module.vpc_aws.aws_internet_gateway.ag_test: Still destroying... [id=igw-0f780e3aad4fc29aa, 30s elapsed]
module.nginxweb.aws_instance.nginxweb[0]: Still destroying... [id=i-0ac362d09561daa31, 30s elapsed]
module.vpc_aws.aws_internet_gateway.ag_test: Destruction complete after 36s
module.nginxweb.aws_instance.nginxweb[0]: Still destroying... [id=i-0ac362d09561daa31, 40s elapsed]
module.nginxweb.aws_instance.nginxweb[0]: Destruction complete after 40s
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Destroying... [id=tf200-nginxweb-key]
module.vpc_aws.aws_subnet.ag_test: Destroying... [id=subnet-09cd5529e7ae10388]
module.vpc_aws.aws_security_group.ag_test: Destroying... [id=sg-0f42ca83aefbddafb]
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Destruction complete after 1s
module.vpc_aws.aws_security_group.ag_test: Destruction complete after 1s
module.vpc_aws.aws_subnet.ag_test: Destruction complete after 1s
module.vpc_aws.aws_vpc.ag_test: Destroying... [id=vpc-0cbff2c2adf87b474]
module.vpc_aws.aws_vpc.ag_test: Destruction complete after 0s

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


Error: AccessDenied: User: arn:aws:sts::323533494701:assumed-role/support_terraform_dev-developer/andrii@hashicorp.com is not authorized to perform: iam:DeleteServerCertificate on resource: server certificate guselietov.com20201224120607441000000001
	status code: 403, request id: e89b3c2a-ceaf-42dc-a561-aa9b6623a65e


 ✘  ~/labs/skills/tf-repo-mirror   f-destory-and-readme-add  git checkout -f f-destory-and-readme-add
 ✘  ~/labs/skills/tf-repo-mirror   f-destory-and-readme-add  terraform destroy --auto-approve
module.sslcert_letsencrypt.acme_certificate.certificate: Destroying... [id=https://acme-v02.api.letsencrypt.org/acme/cert/04fd9dcc83ea68bb41d8b1a6107aa7f37fc3]
module.sslcert_letsencrypt.acme_certificate.certificate: Destruction complete after 2s
module.sslcert_letsencrypt.acme_registration.reg: Destroying... [id=https://acme-v02.api.letsencrypt.org/acme/acct/107316390]
aws_iam_server_certificate.cert: Destroying... [id=ASCAUWVAZLGWUWJCMO4CA]
module.sslcert_letsencrypt.acme_registration.reg: Destruction complete after 1s
module.sslcert_letsencrypt.tls_private_key.private_key: Destroying... [id=0d9d246c47c56490e8a011b32e41726059396aba]
module.sslcert_letsencrypt.tls_private_key.private_key: Destruction complete after 0s

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


Error: AccessDenied: User: arn:aws:sts::323533494701:assumed-role/support_terraform_dev-developer/andrii@hashicorp.com is not authorized to perform: iam:DeleteServerCertificate on resource: server certificate guselietov.com20201224120607441000000001
	status code: 403, request id: ae584e78-3511-4e8c-ad2e-76f41daf7c1e


 ✘  ~/labs/skills/tf-repo-mirror   f-destory-and-readme-add  terraform apply --auto-approve
aws_iam_server_certificate.cert: Refreshing state... [id=ASCAUWVAZLGWUWJCMO4CA]
module.sslcert_letsencrypt.tls_private_key.private_key: Creating...
module.sslcert_letsencrypt.tls_private_key.private_key: Creation complete after 0s [id=627811c7707063d99f0e29b4d0fa5536fc82b741]
module.sslcert_letsencrypt.acme_registration.reg: Creating...
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Creating...
module.vpc_aws.aws_vpc.ag_test: Creating...
aws_key_pair.ptfe-key: Creating...
aws_key_pair.ptfe-key: Creation complete after 0s [id=ptfe-key]
module.nginxweb.aws_key_pair.tf200-nginxweb-key: Creation complete after 0s [id=tf200-nginxweb-key]
module.sslcert_letsencrypt.acme_registration.reg: Creation complete after 2s [id=https://acme-v02.api.letsencrypt.org/acme/acct/107334111]
module.sslcert_letsencrypt.acme_certificate.certificate: Creating...
module.vpc_aws.aws_vpc.ag_test: Creation complete after 2s [id=vpc-07ef994883266a456]
module.vpc_aws.aws_internet_gateway.ag_test: Creating...
module.vpc_aws.aws_route_table.ag_test_route_table: Creating...
module.vpc_aws.aws_subnet.ag_test: Creating...
module.vpc_aws.aws_security_group.ag_test_elb: Creating...
module.vpc_aws.aws_security_group.ag_test: Creating...
module.vpc_aws.aws_route_table.ag_test_route_table: Creation complete after 0s [id=rtb-0f36afee1c5fee45f]
module.vpc_aws.aws_subnet.ag_test: Creation complete after 1s [id=subnet-058d0554a757f4aee]
module.vpc_aws.aws_route_table_association.ag_test_association: Creating...
module.vpc_aws.aws_route_table_association.ag_test_association: Creation complete after 0s [id=rtbassoc-0ed5b16f21fef50ee]
module.vpc_aws.aws_internet_gateway.ag_test: Creation complete after 1s [id=igw-08f5c5d295de2dd5e]
module.vpc_aws.aws_route.ag_test_internet_access: Creating...
module.vpc_aws.aws_security_group.ag_test_elb: Creation complete after 2s [id=sg-03d2bcbf4964bce50]
module.vpc_aws.aws_security_group.ag_test: Creation complete after 2s [id=sg-0a51b4d4279aba201]
module.vpc_aws.aws_route.ag_test_internet_access: Creation complete after 1s [id=r-rtb-0f36afee1c5fee45f1080289494]
module.nginxweb.aws_instance.nginxweb[0]: Creating...
module.sslcert_letsencrypt.acme_certificate.certificate: Still creating... [10s elapsed]
module.sslcert_letsencrypt.acme_certificate.certificate: Creation complete after 12s [id=https://acme-v02.api.letsencrypt.org/acme/cert/04949fb2fa04ef1e318c397132d5cfd3fc9f]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Creating...
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Creating...
module.sslcert_letsencrypt.local_file.ssl_cert_file: Creating...
aws_iam_server_certificate.cert: Creating...
module.sslcert_letsencrypt.local_file.ssl_cert_bundle_file: Creation complete after 0s [id=25c9b308d9e180dc4a5e5c4972c3eab994c33a13]
module.sslcert_letsencrypt.local_file.ssl_cert_file: Creation complete after 0s [id=36ed7f101e94dbfbbc613999083ef93d8834e4ee]
module.sslcert_letsencrypt.local_file.ssl_private_key_file: Creation complete after 0s [id=55f8be0814d5aacb4b7adcd2f371f5fe3199c9a3]
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [10s elapsed]
aws_iam_server_certificate.cert: Creation complete after 1s [id=ASCAUWVAZLGW7GXWSTDQF]
aws_iam_server_certificate.cert: Destroying... [id=ASCAUWVAZLGWUWJCMO4CA]
module.nginxweb.aws_instance.nginxweb[0]: Provisioning with 'remote-exec'...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connecting to remote host via SSH...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Host: 52.59.166.226
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   User: ubuntu
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Password: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Private key: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Certificate: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   SSH Agent: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Checking Host Key: false
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [20s elapsed]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connecting to remote host via SSH...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Host: 52.59.166.226
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   User: ubuntu
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Password: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Private key: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Certificate: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   SSH Agent: true
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   Checking Host Key: false
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Connected!
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:1 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Connecting to archive.ubuntu.com] [
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Connecting to archive.ubuntu.com]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 88.7 kB] [Connecti
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Hit:2 http://archive.ubuntu.com/ubuntu bionic InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 88.7 kB] [Waiting
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:3 http://archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 88.7 kB] [3 InRele
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 88.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:4 http://archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 88.7 kB] [4 InRele
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 InRelease gpgv 88.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [2 InRelease gpgv 242 kB] [Waiting f
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:5 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [1453 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [2 InRelease gpgv 242 kB] [5 Package
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages 1453 kB/1453 kB 100%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [3 InRelease gpgv 88.7 kB] [Waiting
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:6 http://archive.ubuntu.com/ubuntu bionic/universe amd64 Packages [8570 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:7 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [284 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:8 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [185 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:9 http://security.ubuntu.com/ubuntu bionic-security/restricted Translation-en [24.3 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:10 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [1094 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:11 http://security.ubuntu.com/ubuntu bionic-security/universe Translation-en [244 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:12 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [12.8 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:13 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [2872 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [3 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [6 Packages 8
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:14 http://archive.ubuntu.com/ubuntu bionic/universe Translation-en [4941 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:15 http://archive.ubuntu.com/ubuntu bionic/multiverse amd64 Packages [151 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:16 http://archive.ubuntu.com/ubuntu bionic/multiverse Translation-en [108 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:17 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 Packages [1790 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [5 Packages store 0 B] [4 InRelease
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [4 InRelease gpgv 74.6 kB] [17 Packa
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [7 Translation-en store 0 B] [4 InRe
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [7 Translation-en store 0 B] [4 InRe
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:18 http://archive.ubuntu.com/ubuntu bionic-updates/main Translation-en [376 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [7 Translation-en store 0 B] [4 InRe
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:19 http://archive.ubuntu.com/ubuntu bionic-updates/restricted amd64 Packages [206 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [7 Translation-en store 0 B] [4 InRe
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 86% [7 Translation-en store 0 B] [19 Pa
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:20 http://archive.ubuntu.com/ubuntu bionic-updates/restricted Translation-en [27.9 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:21 http://archive.ubuntu.com/ubuntu bionic-updates/universe amd64 Packages [1697 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 87% [7 Translation-en store 0 B] [21 Pa
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:22 http://archive.ubuntu.com/ubuntu bionic-updates/universe Translation-en [357 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 93% [7 Translation-en store 0 B] [22 Tr
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:23 http://archive.ubuntu.com/ubuntu bionic-updates/multiverse amd64 Packages [35.6 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B] [23 Pa
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:24 http://archive.ubuntu.com/ubuntu bionic-updates/multiverse Translation-en [7180 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B] [24 Tr
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:25 http://archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [10.0 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B] [25 Pa
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:26 http://archive.ubuntu.com/ubuntu bionic-backports/main Translation-en [4764 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B] [26 Tr
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:27 http://archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [10.3 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 94% [7 Translation-en store 0 B] [27 Pa
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:28 http://archive.ubuntu.com/ubuntu bionic-backports/universe Translation-en [4588 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [7 Translation-en store 0 B] [28 Tr
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [7 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [8 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [9 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [10 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 95% [11 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [12 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [13 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [6 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [6 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [6 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [30s elapsed]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [6 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [6 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [14 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [14 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 96% [14 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [15 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [16 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [17 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 97% [18 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [19 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [20 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [21 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 98% [22 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [23 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [24 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [25 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [26 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [27 Packages store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [28 Translation-en store 0 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Fetched 21.8 MB in 6s (3834 kB/s)
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
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 50%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree... 50%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Building dependency tree
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading state information... Done
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 3 packages can be upgraded. Run 'apt list --upgradable' to see them.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 0%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 4%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 4%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 6%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 6%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 6%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 6%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 6%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 6%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 41%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 41%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 59%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 59%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 60%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 60%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 60%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 60%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 64%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 67%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 67%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 71%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 71%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 72%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 72%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 73%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 73%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 79%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 79%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 82%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 88%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 88%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 92%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 92%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 93%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Reading package lists... 93%
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
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): The following additional packages will be installed:
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   fontconfig-config fonts-dejavu-core
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libfontconfig1 libgd3 libjbig0
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libjpeg-turbo8 libjpeg8
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-geoip
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-image-filter
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-xslt-filter
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-mail
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-stream libtiff5
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libwebp6 libxpm4 nginx-common
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   nginx-core
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Suggested packages:
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libgd-tools fcgiwrap nginx-doc
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   ssl-cert
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): The following NEW packages will be installed:
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   fontconfig-config fonts-dejavu-core
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libfontconfig1 libgd3 libjbig0
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libjpeg-turbo8 libjpeg8
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-geoip
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-image-filter
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-http-xslt-filter
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-mail
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libnginx-mod-stream libtiff5
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   libwebp6 libxpm4 nginx nginx-common
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):   nginx-core
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0 upgraded, 18 newly installed, 0 to remove and 10 not upgraded.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Need to get 2462 kB of archives.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): After this operation, 8210 kB of additional disk space will be used.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:1 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libjpeg-turbo8 amd64 1.5.2-0ubuntu5.18.04.4 [110 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 0% [1 libjpeg-turbo8 14.1 kB/110 kB 13%
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 5% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:2 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 fonts-dejavu-core all 2.37-1 [1041 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 5% [2 fonts-dejavu-core 19.9 kB/1041 kB
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 40% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:3 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 fontconfig-config all 2.12.6-0ubuntu2 [55.8 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 41% [3 fontconfig-config 27.3 kB/55.8 k
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 43% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:4 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 libfontconfig1 amd64 2.12.6-0ubuntu2 [137 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 44% [4 libfontconfig1 36.6 kB/137 kB 27
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 48% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:5 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 libjpeg8 amd64 8c-2ubuntu8 [2194 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 48% [5 libjpeg8 2194 B/2194 B 100%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:6 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 libjbig0 amd64 2.1-3.1build1 [26.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:7 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libtiff5 amd64 4.0.9-5ubuntu0.3 [153 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 53% [7 libtiff5 65.5 kB/153 kB 43%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 57% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:8 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 libwebp6 amd64 0.6.1-2 [185 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 59% [8 libwebp6 44.3 kB/185 kB 24%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 64% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:9 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 libxpm4 amd64 1:3.5.12-1 [34.0 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 66% [9 libxpm4 34.0 kB/34.0 kB 100%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 67% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:10 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libgd3 amd64 2.2.5-4ubuntu0.4 [119 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 67% [10 libgd3 20.7 kB/119 kB 17%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 72% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:11 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 nginx-common all 1.14.0-0ubuntu1.7 [37.4 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 73% [11 nginx-common 32.3 kB/37.4 kB 86
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 74% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:12 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libnginx-mod-http-geoip amd64 1.14.0-0ubuntu1.7 [11.2 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 74% [12 libnginx-mod-http-geoip 11.2 kB
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 75% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:13 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libnginx-mod-http-image-filter amd64 1.14.0-0ubuntu1.7 [14.6 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 76% [13 libnginx-mod-http-image-filter
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 77% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:14 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libnginx-mod-http-xslt-filter amd64 1.14.0-0ubuntu1.7 [13.0 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 77% [14 libnginx-mod-http-xslt-filter 1
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 79% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:15 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libnginx-mod-mail amd64 1.14.0-0ubuntu1.7 [41.8 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 79% [15 libnginx-mod-mail 20.0 kB/41.8
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 81% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:16 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libnginx-mod-stream amd64 1.14.0-0ubuntu1.7 [63.7 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 82% [16 libnginx-mod-stream 24.2 kB/63.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 84% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:17 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 nginx-core amd64 1.14.0-0ubuntu1.7 [413 kB]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 85% [17 nginx-core 25.3 kB/413 kB 6%]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 99% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Get:18 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 nginx all 1.14.0-0ubuntu1.7 [3596 B]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): 100% [Working]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Fetched 2462 kB in 0s (47.6 MB/s)
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preconfiguring packages ...
                                                        Selecting previously unselected package libjpeg-turbo8:amd64.b.aws_instance.nginxweb[0] (remote-exec):
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
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../00-libjpeg-turbo8_1.5.2-0ubuntu5.18.04.4_amd64.deb ...
Progress: [  1%] [..................] 0] (remote-exec): Unpacking libjpeg-turbo8:amd64 (1.5.2-0ubuntu5.18.04.4) ...
Progress: [  3%] [..................] 0] (remote-exec): Selecting previously unselected package fonts-dejavu-core.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../01-fonts-dejavu-core_2.37-1_all.deb ...
Progress: [  4%] [..................] 0] (remote-exec): Unpacking fonts-dejavu-core (2.37-1) ...
Progress: [  7%] [#.................] 0] (remote-exec): Selecting previously unselected package fontconfig-config.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../02-fontconfig-config_2.12.6-0ubuntu2_all.deb ...
Progress: [  8%] [#.................] 0] (remote-exec): Unpacking fontconfig-config (2.12.6-0ubuntu2) ...
Progress: [ 10%] [#.................] 0] (remote-exec): Selecting previously unselected package libfontconfig1:amd64.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../03-libfontconfig1_2.12.6-0ubuntu2_amd64.deb ...
Progress: [ 11%] [#.................] 0] (remote-exec): Unpacking libfontconfig1:amd64 (2.12.6-0ubuntu2) ...
Progress: [ 13%] [##................] 0] (remote-exec): Selecting previously unselected package libjpeg8:amd64.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../04-libjpeg8_8c-2ubuntu8_amd64.deb ...
Progress: [ 14%] [##................] 0] (remote-exec): Unpacking libjpeg8:amd64 (8c-2ubuntu8) ...
Progress: [ 16%] [##................] 0] (remote-exec): Selecting previously unselected package libjbig0:amd64.
module.nginxweb.aws_instance.nginxweb[0]: Still creating... [40s elapsed]
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../05-libjbig0_2.1-3.1build1_amd64.deb ...
Progress: [ 18%] [###...............] 0] (remote-exec): Unpacking libjbig0:amd64 (2.1-3.1build1) ...
Progress: [ 20%] [###...............] 0] (remote-exec): Selecting previously unselected package libtiff5:amd64.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../06-libtiff5_4.0.9-5ubuntu0.3_amd64.deb ...
Progress: [ 21%] [###...............] 0] (remote-exec): Unpacking libtiff5:amd64 (4.0.9-5ubuntu0.3) ...
Progress: [ 23%] [####..............] 0] (remote-exec): Selecting previously unselected package libwebp6:amd64.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../07-libwebp6_0.6.1-2_amd64.deb ...
Progress: [ 24%] [####..............] 0] (remote-exec): Unpacking libwebp6:amd64 (0.6.1-2) ...
Progress: [ 26%] [####..............] 0] (remote-exec): Selecting previously unselected package libxpm4:amd64.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../08-libxpm4_1%3a3.5.12-1_amd64.deb ...
Progress: [ 27%] [####..............] 0] (remote-exec): Unpacking libxpm4:amd64 (1:3.5.12-1) ...
Progress: [ 30%] [#####.............] 0] (remote-exec): Selecting previously unselected package libgd3:amd64.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../09-libgd3_2.2.5-4ubuntu0.4_amd64.deb ...
Progress: [ 31%] [#####.............] 0] (remote-exec): Unpacking libgd3:amd64 (2.2.5-4ubuntu0.4) ...
Progress: [ 33%] [#####.............] 0] (remote-exec): Selecting previously unselected package nginx-common.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../10-nginx-common_1.14.0-0ubuntu1.7_all.deb ...
Progress: [ 34%] [######............] 0] (remote-exec): Unpacking nginx-common (1.14.0-0ubuntu1.7) ...
Progress: [ 36%] [######............] 0] (remote-exec): Selecting previously unselected package libnginx-mod-http-geoip.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../11-libnginx-mod-http-geoip_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 37%] [######............] 0] (remote-exec): Unpacking libnginx-mod-http-geoip (1.14.0-0ubuntu1.7) ...
Progress: [ 40%] [#######...........] 0] (remote-exec): Selecting previously unselected package libnginx-mod-http-image-filter.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../12-libnginx-mod-http-image-filter_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 41%] [#######...........] 0] (remote-exec): Unpacking libnginx-mod-http-image-filter (1.14.0-0ubuntu1.7) ...
Progress: [ 43%] [#######...........] 0] (remote-exec): Selecting previously unselected package libnginx-mod-http-xslt-filter.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../13-libnginx-mod-http-xslt-filter_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 44%] [#######...........] 0] (remote-exec): Unpacking libnginx-mod-http-xslt-filter (1.14.0-0ubuntu1.7) ...
Progress: [ 46%] [########..........] 0] (remote-exec): Selecting previously unselected package libnginx-mod-mail.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../14-libnginx-mod-mail_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 47%] [########..........] 0] (remote-exec): Unpacking libnginx-mod-mail (1.14.0-0ubuntu1.7) ...
Progress: [ 49%] [########..........] 0] (remote-exec): Selecting previously unselected package libnginx-mod-stream.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../15-libnginx-mod-stream_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 51%] [#########.........] 0] (remote-exec): Unpacking libnginx-mod-stream (1.14.0-0ubuntu1.7) ...
Progress: [ 53%] [#########.........] 0] (remote-exec): Selecting previously unselected package nginx-core.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../16-nginx-core_1.14.0-0ubuntu1.7_amd64.deb ...
Progress: [ 54%] [#########.........] 0] (remote-exec): Unpacking nginx-core (1.14.0-0ubuntu1.7) ...
Progress: [ 56%] [##########........] 0] (remote-exec): Selecting previously unselected package nginx.
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Preparing to unpack .../17-nginx_1.14.0-0ubuntu1.7_all.deb ...
Progress: [ 57%] [##########........] 0] (remote-exec): Unpacking nginx (1.14.0-0ubuntu1.7) ...
Progress: [ 59%] [##########........] 0] (remote-exec): Setting up libjbig0:amd64 (2.1-3.1build1) ...
Progress: [ 62%] [###########.......] 0] (remote-exec): Setting up fonts-dejavu-core (2.37-1) ...
Progress: [ 64%] [###########.......] 0] (remote-exec): Setting up nginx-common (1.14.0-0ubuntu1.7) ...
Progress: [ 65%] [###########.......] 0] (remote-exec):
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /lib/systemd/system/nginx.service.
Progress: [ 66%] [###########.......] 0] (remote-exec): Setting up libjpeg-turbo8:amd64 (1.5.2-0ubuntu5.18.04.4) ...
Progress: [ 68%] [############......] 0] (remote-exec): Setting up libnginx-mod-mail (1.14.0-0ubuntu1.7) ...
Progress: [ 70%] [############......] 0] (remote-exec): Setting up libxpm4:amd64 (1:3.5.12-1) ...
Progress: [ 73%] [#############.....] 0] (remote-exec): Setting up libnginx-mod-http-xslt-filter (1.14.0-0ubuntu1.7) ...
Progress: [ 75%] [#############.....] 0] (remote-exec): Setting up libnginx-mod-http-geoip (1.14.0-0ubuntu1.7) ...
Progress: [ 77%] [#############.....] 0] (remote-exec): Setting up libwebp6:amd64 (0.6.1-2) ...
Progress: [ 79%] [##############....] 0] (remote-exec): Setting up libjpeg8:amd64 (8c-2ubuntu8) ...
Progress: [ 81%] [##############....] 0] (remote-exec): Setting up fontconfig-config (2.12.6-0ubuntu2) ...
Progress: [ 84%] [###############...] 0] (remote-exec): Setting up libnginx-mod-stream (1.14.0-0ubuntu1.7) ...
Progress: [ 86%] [###############...] 0] (remote-exec): Setting up libtiff5:amd64 (4.0.9-5ubuntu0.3) ...
Progress: [ 88%] [###############...] 0] (remote-exec): Setting up libfontconfig1:amd64 (2.12.6-0ubuntu2) ...
Progress: [ 90%] [################..] 0] (remote-exec): Setting up libgd3:amd64 (2.2.5-4ubuntu0.4) ...
Progress: [ 92%] [################..] 0] (remote-exec): Setting up libnginx-mod-http-image-filter (1.14.0-0ubuntu1.7) ...
Progress: [ 95%] [#################.] 0] (remote-exec): Setting up nginx-core (1.14.0-0ubuntu1.7) ...
Progress: [ 96%] [#################.] 0] (remote-exec):
Progress: [ 97%] [#################.] 0] (remote-exec): Setting up nginx (1.14.0-0ubuntu1.7) ...
Progress: [ 99%] [#################.] 0] (remote-exec): Processing triggers for systemd (237-3ubuntu10.43) ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Processing triggers for ufw (0.36-0ubuntu0.18.04.1) ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Processing triggers for ureadahead (0.100.0-21) ...
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Processing triggers for libc-bin (2.27-3ubuntu1.3) ...

module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Rules updated
module.nginxweb.aws_instance.nginxweb[0] (remote-exec): Rules updated (v6)
module.nginxweb.aws_instance.nginxweb[0]: Creation complete after 43s [id=i-0f6763fd3b1f4484c]
null_resource.prepare_folder: Creating...
null_resource.make_providers_local_mirror: Creating...
module.dns_cloudflare.cloudflare_record.site_backend: Creating...
null_resource.make_providers_local_mirror: Provisioning with 'local-exec'...
null_resource.prepare_folder: Provisioning with 'remote-exec'...
aws_elb.mirror_lb: Creating...
null_resource.prepare_folder (remote-exec): Connecting to remote host via SSH...
null_resource.prepare_folder (remote-exec):   Host: 52.59.166.226
null_resource.prepare_folder (remote-exec):   User: ubuntu
null_resource.prepare_folder (remote-exec):   Password: false
null_resource.prepare_folder (remote-exec):   Private key: true
null_resource.prepare_folder (remote-exec):   Certificate: false
null_resource.prepare_folder (remote-exec):   SSH Agent: true
null_resource.prepare_folder (remote-exec):   Checking Host Key: false
null_resource.make_providers_local_mirror (local-exec): Executing: ["/bin/sh" "-c" "mkdir -p mirror-content;  terraform providers mirror mirror-content"]
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/aws...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.22.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.prepare_folder (remote-exec): Connected!
null_resource.prepare_folder: Creation complete after 2s [id=852814394223474783]
module.dns_cloudflare.cloudflare_record.site_backend: Creation complete after 3s [id=a398982a4d8baf43889349e940759a71]
aws_elb.mirror_lb: Creation complete after 4s [id=ag-clb-tf-repo-mirror-1]
module.dns_cloudflare.cloudflare_record.site_lb: Creating...
module.dns_cloudflare.cloudflare_record.site_lb: Creation complete after 3s [id=8cdbd34c937167b28eca1360fd6af2ee]
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/null...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.0.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/tls...
null_resource.make_providers_local_mirror (local-exec):   - Selected v3.0.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring hashicorp/local...
null_resource.make_providers_local_mirror (local-exec):   - Selected v2.0.0 with no constraints
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror: Still creating... [10s elapsed]
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by HashiCorp
null_resource.make_providers_local_mirror (local-exec): - Mirroring cloudflare/cloudflare...
null_resource.make_providers_local_mirror (local-exec):   - Selected v2.14.0 to meet constraints 2.14.0
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: signed by a HashiCorp partner
null_resource.make_providers_local_mirror (local-exec): - Mirroring vancluever/acme...
null_resource.make_providers_local_mirror (local-exec):   - Selected v1.6.3 to meet constraints 1.6.3
null_resource.make_providers_local_mirror (local-exec):   - Downloading package for darwin_amd64...
null_resource.make_providers_local_mirror: Still creating... [20s elapsed]
null_resource.make_providers_local_mirror (local-exec):   - Package authenticated: self-signed
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
null_resource.make_providers_local_mirror: Creation complete after 27s [id=765176960255637550]
null_resource.copy_mirror_to_server: Creating...
null_resource.copy_mirror_to_server: Provisioning with 'file'...
null_resource.copy_mirror_to_server: Still creating... [10s elapsed]
null_resource.copy_mirror_to_server: Still creating... [20s elapsed]
null_resource.copy_mirror_to_server: Still creating... [30s elapsed]
null_resource.copy_mirror_to_server: Creation complete after 31s [id=765435167280379779]

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


Apply complete! Resources: 26 added, 0 changed, 0 destroyed.

Outputs:

backend_fqdn = "tf-repo-mirror-1_backend.guselietov.com"
cert_url = "https://acme-v02.api.letsencrypt.org/acme/cert/04fd9dcc83ea68bb41d8b1a6107aa7f37fc3"
full_site_name = "tf-repo-mirror-1.guselietov.com"
loadbalancer_fqdn = "ag-clb-tf-repo-mirror-1-1113950476.eu-central-1.elb.amazonaws.com"
public_dns = [
  "ec2-18-158-59-132.eu-central-1.compute.amazonaws.com",
]
public_ips = [
  "18.158.59.132",
]
```