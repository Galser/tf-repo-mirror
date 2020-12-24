# Terrafrom destroy

```Terraform
terraform destroy --auto-approve
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
```