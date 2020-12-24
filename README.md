# tf-repo-mirror
Code for testing TF network mirror technique that arrived with TF 0.13. Based on Nginx module 

# Requirements

This repository assumes general knowledge about Terraform and Terrafrom CLI v0.14.x , if not, please get yourself accustomed first by going through [getting started guide for Terraform](https://learn.hashicorp.com/terraform?track=getting-started#getting-started). We also going to use AWS EC2 as our infrastructure provider.

Please have TF v 0.14.X installed in advance. Version 0.13 and other(s) below it are not going to work with CLI configuraiton file override.

To learn more about the mentioned above tools and technologies - please check section [Technologies near the end of the README](#technologies)

# How-to

## Prepare authentication credentials
- Beforehand, you will need to have SSH RSA key available at the default location :
 - `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`
 > This key is going to be used later to connect to the instance where TFE will be running.
 
- Prepare AWS auth credentials (You can create security credentials on [this page](https://console.aws.amazon.com/iam/home?#security_credential).) To export them via env variables, execute in the command line :
 ```
 export AWS_ACCESS_KEY_ID="YOUR ACCESS KEY"
 export AWS_SECRET_ACCESS_KEY="YOUR SECRET KEY"
 ```

> If running in TFE/TFC you will need to define those variables in your workspace, or use some other method of AWS authorization
- Prepare CloudFlare authentication for your domain DNS management - register and export as env variables API keys and tokens. Follow instructions from CloudFlare here: https://support.cloudflare.com/hc/en-us/articles/200167836-Managing-API-Tokens-and-Keys
    - Export generated token and API keys :
    ```bash
    export CLOUDFLARE_API_KEY=YOUR_API_KEY_HERE
    export CLOUDFLARE_API_TOKEN=YOUR_TOKEN_HERE
    export CLOUDFLARE_ZONE_API_TOKEN=YOUR_TOKEN_HERE
    export CLOUDFLARE_DNS_API_TOKEN=YOUR_TOKEN_HERE
    ```
- Clone this repo (*use the tools of your choice*)
- Open the folder with cloned repo
- Define your domain name in [variables.tf](variables.tf), edit on 2-nd line, following block : 
  ```terraform
  variable "site_domain" {
    default = "guselietov.com"
  }
  ```
- From inside folder with cloned repo init Terraform by executing : 

```
terraform init
```
Example output can be found here : [terraform_init.md](terraform_init.md)

- Now let's spin up everything, by executing :

```
terraform apply -auto-approve
```
Example output can be found here : [terraform_apply.md](terraform_apply.md)

Execution will take some time, and at the very end of the output you should see something similar to : 

```bash
Outputs:
```

# Test of local `terraform init` against new mirror

For the local test in folder `mirror-test` we have pre-defined some files : 
    + `providers.tf` - with some providers defined
    + `test.tfc`  (*CLI configuration*) - you may need to change URL
In order to perform test :
- Change folder to the `mirror-test` in the root of the repo
- Export TF_CLI_CONFIG_FILE - to temporary override global : `export TF_CLI_CONFIG_FILE=${FULL_PATH_HERE_TO_REPO_CLONE}/mirror-test/test.tfc`
- run `terraform init` , check next section for example of output

## TEST - example of Terraform init with `TF_LOG` set to `DEBUG` so the installation of providers would be visible : 

```bash
export TF_LOG=DEBUG; terraform init
2020/12/24 15:37:16 [WARN] Log levels other than TRACE are currently unreliable, and are supported only for backward compatibility.
  Use TF_LOG=TRACE to see Terraform's internal logs.
  ----
2020/12/24 15:37:16 [INFO] Terraform version: 0.14.3
2020/12/24 15:37:16 [INFO] Go runtime version: go1.15.2
2020/12/24 15:37:16 [INFO] CLI args: []string{"/usr/local/bin/terraform", "init"}
2020/12/24 15:37:16 [DEBUG] Attempting to open CLI config file: /Users/andrii/labs/skills/tf-repo-mirror/mirror-test/test.tfrc
2020/12/24 15:37:16 Loading CLI configuration from /Users/andrii/labs/skills/tf-repo-mirror/mirror-test/test.tfrc
2020/12/24 15:37:16 [DEBUG] Not reading CLI config directory because config location is overridden by environment variable
2020/12/24 15:37:16 [DEBUG] checking for credentials in "/Users/andrii/.terraform.d/plugins"
2020/12/24 15:37:16 [DEBUG] Explicit provider installation configuration is set
2020/12/24 15:37:16 [WARN] Log levels other than TRACE are currently unreliable, and are supported only for backward compatibility.
  Use TF_LOG=TRACE to see Terraform's internal logs.
  ----
2020/12/24 15:37:16 [INFO] CLI command args: []string{"init"}
2020/12/24 15:37:16 [WARN] Log levels other than TRACE are currently unreliable, and are supported only for backward compatibility.
  Use TF_LOG=TRACE to see Terraform's internal logs.
  ----

Initializing the backend...
2020/12/24 15:37:16 [DEBUG] New state was assigned lineage "12814f51-8a8d-5ff4-685a-0ccfcf19dbb4"
2020/12/24 15:37:16 [DEBUG] checking for provisioner in "."
2020/12/24 15:37:16 [DEBUG] checking for provisioner in "/usr/local/bin"
2020/12/24 15:37:16 [DEBUG] checking for provisioner in "/Users/andrii/.terraform.d/plugins"
2020/12/24 15:37:16 [INFO] Failed to read plugin lock file .terraform/plugins/darwin_amd64/lock.json: open .terraform/plugins/darwin_amd64/lock.json: no such file or directory

2020/12/24 15:37:16 [DEBUG] Querying available versions of provider registry.terraform.io/cloudflare/cloudflare at network mirror https://tf-repo-mirror-1.guselietov.com/
2020/12/24 15:37:16 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/cloudflare/cloudflare/index.json
Initializing provider plugins...
- Finding cloudflare/cloudflare versions matching "2.14.0"...
- Finding latest version of hashicorp/aws...
2020/12/24 15:37:16 [DEBUG] Querying available versions of provider registry.terraform.io/hashicorp/aws at network mirror https://tf-repo-mirror-1.guselietov.com/
2020/12/24 15:37:16 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/hashicorp/aws/index.json
2020/12/24 15:37:16 [DEBUG] Querying available versions of provider registry.terraform.io/vancluever/acme at network mirror https://tf-repo-mirror-1.guselietov.com/
2020/12/24 15:37:16 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/vancluever/acme/index.json
- Finding vancluever/acme versions matching "1.6.3"...
2020/12/24 15:37:16 [DEBUG] Finding package URL for registry.terraform.io/hashicorp/aws v3.22.0 on darwin_amd64 via network mirror https://tf-repo-mirror-1.guselietov.com/
2020/12/24 15:37:16 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/hashicorp/aws/3.22.0.json
- Installing hashicorp/aws v3.22.0...
2020/12/24 15:37:25 [DEBUG] Finding package URL for registry.terraform.io/vancluever/acme v1.6.3 on darwin_amd64 via network mirror https://tf-repo-mirror-1.guselietov.com/
2020/12/24 15:37:25 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/vancluever/acme/1.6.3.json
- Installed hashicorp/aws v3.22.0 (verified checksum)
- Installing vancluever/acme v1.6.3...
2020/12/24 15:37:27 [DEBUG] Finding package URL for registry.terraform.io/cloudflare/cloudflare v2.14.0 on darwin_amd64 via network mirror https://tf-repo-mirror-1.guselietov.com/
2020/12/24 15:37:27 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/cloudflare/cloudflare/2.14.0.json
- Installed vancluever/acme v1.6.3 (verified checksum)
- Installing cloudflare/cloudflare v2.14.0...
- Installed cloudflare/cloudflare v2.14.0 (verified checksum)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

From what may interest us in the log above is : 

- Terraform going to use specific config file - `2020/12/24 15:37:16 Loading CLI configuration from /Users/andrii/labs/skills/tf-repo-mirror/mirror-test/test.tfrc`
- Terraform CLI is using network mirror : `2020/12/24 15:37:16 [DEBUG] Querying available versions of provider registry.terraform.io/cloudflare/cloudflare at network mirror https://tf-repo-mirror-1.guselietov.com/`
- For example for **Cloudflare** provider we see all 4 disitinct steps : 
    + Query of versions : `2020/12/24 15:37:16 [DEBUG] Querying available versions of provider registry.terraform.io/hashicorp/aws at network mirror https://tf-repo-mirror-1.guselietov.com/`
    + Finding package URL : `2020/12/24 15:37:27 [DEBUG] Finding package URL for registry.terraform.io/cloudflare/cloudflare v2.14.0 on darwin_amd64 via network mirror https://tf-repo-mirror-1.guselietov.com/`
    + Downloading of the specific version meta-info : `2020/12/24 15:37:27 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/cloudflare/cloudflare/2.14.0.json`
    + Verifying checksum and installing from that URL : `- Installed cloudflare/cloudflare v2.14.0 (verified checksum` 
- Return null (empty) value for the TF_CLI_CONFIG_FILE by executing : `export TF_CLI_CONFIG_FILE="" && unset TF_CLI_CONFIG_FILE`

## Clean-up 

Do not forget to destroy your infra after test in order to not waste money on resource by running `terrafrom destroy --auto-approve` from the roor of the repo clone.


# Run logs

- terraform init : [terraform_init.md](terraform_init.md)
- terraform apply : [terraform_apply.md](terraform_apply.md)
- terraform destroy  : [terraform_destroy.md](terraform_destroy.md)


# Notes

## Details on `terraform providers mirror`

Original manual located here : https://www.terraform.io/docs/commands/providers/mirror.html

Note - We will need (in code to create folder manually as `mirror-content` if its not exist yet : `mkdir mirror-content` (*`terraform providers mirror` gonna fail if that folder does not exists in advance*)


## SSL Certificates and Go TLS library bug in macOS Catalina   

Installing providers and as the first step - reading them - requires valid HTTPS resources. Sometimes, with Terraform binary CLI, even for the valid certificate in MacOS Catalin you can get an error : 

```
Error: Failed to query available provider packages

Could not retrieve the list of available versions for provider
cloudflare/cloudflare: failed to query provider mirror
https://tf-repo-mirror-1.guselietov.com/ for
registry.terraform.io/cloudflare/cloudflare: the request failed after 2
attempts, please try again later: Get
"https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/cloudflare/cloudflare/index.json":
x509: certificate signed by unknown authority
```

Though certificate signed by Letsencrypt prod server is *absolutely* valid. The solution [(though weird) is present in our GitHub](https://github.com/hashicorp/terraform/issues/22193#issuecomment-610877715) : 

My incredibly weird workaround (not sure why it works):

Depending on which resource fails (in this case registry.terraform.io for the comment above, or the s3 endpoint for the original issue post), you need to check which root CA is trusted for the certificate presented by that domain, and do a weird dance in Keychain

For instance, for the s3 endpoint, you can use curl or the browser to verify that the root CA trusted for it is "Baltimore CyberTrust Root".

- Search for it in Keychain (if it's not present - **add it**)
- Double click on it
- Expand the "trust" section. The first dropdown should be set to "always trust". Change it to "never trust". Close the dialog, and authenticate to save the changes.
- Double click on it again, expand trust and change it to "use system defaults" (*my attempts to change it directly to this value, without going through "never trust" always failed silently. I blame the Keychain ui for being weird*)

I encountered this problem with many programs written in Go using the standard TLS library.

This issue might describe a less "magic" approach to my workaround golang/go#24652


# Technologies

1. **To download the content of this repository** you will need **git command-line tools**(recommended) or **Git UI Client**. To install official command-line Git tools please [find here instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for various operating systems. 

2. **For managing infrastructure** we using Terraform - open-source infrastructure as a code software tool created by HashiCorp. It enables users to define and provision a data center infrastructure using a high-level configuration language known as Hashicorp Configuration Language, or optionally JSON. More you encouraged to [learn here](https://www.terraform.io).
 
3. **This project for virtualization** uses **AWS EC2** - Amazon Elastic Compute Cloud (Amazon EC2 for short) - a web service that provides secure, resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers. You can read in details and create a free try-out account if you don't have one here : [Amazon EC2 main page](https://aws.amazon.com/ec2/)

4. **Nginx stands apart - as it will be downloaded and installed automatically during the provision.** Nginx is an open source HTTP Web server and reverse proxy server.In addition to offering HTTP server capabilities, Nginx can also operate as an IMAP/POP3 mail proxy server as well as function as a load balancer and HTTP cache server. You can get more information about it  - check [official website here](https://www.nginx.com)  

5. **Cloudflare**, - is an American web infrastructure and website security company, providing content delivery network services, DDoS mitigation, Internet security, and distributed domain name server services. More information can be found here: https://www.cloudflare.com/

6. **Let'sEncrypt** - Let's Encrypt is a non-profit certificate authority run by Internet Security Research Group that provides X.509 certificates for Transport Layer Security encryption at no charge. The certificate is valid for 90 days, during which renewal can take place at any time. You cna find out more on their [official page](https://letsencrypt.org/)

# TODO

- [x] initial code import
- [x] tune security group rules (allow incoming HTTPS)
- [x] use Nginx module from earlier
- [x] deploy
- [x] test for a general accesebility
- [x] grab some content from our repo
- [x] create test code
- [x] run test code localy
- [x] update README
