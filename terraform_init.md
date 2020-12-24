# Terraform init 

```Terraform

 ~/labs/skills/tf-repo-mirror   f-destory-and-readme-add  terraform init
Initializing modules...
- dns_cloudflare in modules/dns_cloudflare
- nginxweb in modules/tf-nginx-module
- sslcert_letsencrypt in modules/sslcert_letsencrypt
- vpc_aws in modules/vpc_aws

Initializing the backend...

Initializing provider plugins...
- Finding vancluever/acme versions matching "1.6.3"...
- Finding cloudflare/cloudflare versions matching "2.14.0"...
- Finding latest version of hashicorp/aws...
- Finding latest version of hashicorp/null...
- Finding latest version of hashicorp/local...
- Finding latest version of hashicorp/tls...
- Installing hashicorp/null v3.0.0...
- Installed hashicorp/null v3.0.0 (signed by HashiCorp)
- Installing hashicorp/local v2.0.0...
- Installed hashicorp/local v2.0.0 (signed by HashiCorp)
- Installing hashicorp/tls v3.0.0...
- Installed hashicorp/tls v3.0.0 (signed by HashiCorp)
- Installing vancluever/acme v1.6.3...
- Installed vancluever/acme v1.6.3 (self-signed, key ID AD79F2BFFFD5B46C)
- Installing cloudflare/cloudflare v2.14.0...
- Installed cloudflare/cloudflare v2.14.0 (signed by a HashiCorp partner, key ID DE413CEC881C3283)
- Installing hashicorp/aws v3.22.0...
- Installed hashicorp/aws v3.22.0 (signed by HashiCorp)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/plugins/signing.html

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.


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

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
