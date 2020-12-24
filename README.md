# tf-repo-mirror
Code for testing TF network mirror technique that arrived with TF 0.13. Based on Nginx module 

# Requirements

# How-to

# Draft of steps

- Terraform 0.14 is required (to be able to overrid CLI config for test)
- Preapre AWS Auth
- Clone repo
- Run : `terrafrom apply`
- Create folder `mirror-content` if its not exist yet : `mkdir mirror-content` (*`terraform providers mirror` gonna fail if that folder does not exists in advance*)
- Create mirror via `terraform providers mirror mirror-content` (see https://www.terraform.io/docs/commands/providers/mirror.html)
- Create mirror via `terraform providers mirror mirror-content` (see https://www.terraform.io/docs/commands/providers/mirror.html)
- Copy content ofr them `` to the server (backend FQDN gonna be in outputs)
- move content at the server to `/var/www/html`
- the path now going to bem for example for AWS provider :  `https://tf-repo-mirror-1.guselietov.com/hashicorp/aws/index.json` - 
- For the local test in folder mirror-test created : 
    + `test.tfc`  (*CLI configuration*)
    + need to export TF_CLI_CONFIG_FILE - to temporary override global : `export TF_CLI_CONFIG_FILE=${FULL_PATH_HERE}/mirror-test/test.tfc`
    + run `terraform init`

- Example of Terrafrom init with `TF_LOG` set to `DEBUG` so the installation of providers would be visible : 

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
- For example for **Cloudflare** provider we see all 3 disitinct steps : 
    + Query of versions : `2020/12/24 15:37:16 [DEBUG] Querying available versions of provider registry.terraform.io/hashicorp/aws at network mirror https://tf-repo-mirror-1.guselietov.com/`
    + Finding package URL : `2020/12/24 15:37:27 [DEBUG] Finding package URL for registry.terraform.io/cloudflare/cloudflare v2.14.0 on darwin_amd64 via network mirror https://tf-repo-mirror-1.guselietov.com/`
    + Downloading of the specific version meta-info : `2020/12/24 15:37:27 [DEBUG] GET https://tf-repo-mirror-1.guselietov.com/registry.terraform.io/cloudflare/cloudflare/2.14.0.json`
    + Verifying checksum and installing from that URL : `- Installed cloudflare/cloudflare v2.14.0 (verified checksum` 
- Return null (empty) value for the TF_CLI_CONFIG_FILE by executing : `export TF_CLI_CONFIG_FILE="" && unset TF_CLI_CONFIG_FILE`


# Notes

## SSL Certifictes and Go TLS library bug in MacOS Catalina   

Installing providers and as fist step - reading them - requires valid HTTPS resrouces. Sometimes, with Terrafomr binary CLI, even for valid certificate in MacOS Catalin you can get error : 

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

Though certificate signed by Letsencrypt prod server is absolutely valid. The solution [(though weird) is present in our GitHub](https://github.com/hashicorp/terraform/issues/22193#issuecomment-610877715) : 

My incredibly weird workaround (not sure why it works):

Depending on which resource fails (in this case registry.terraform.io for the comment above, or the s3 endpoint for the original issue post), you need to check which root CA is trusted for the certificate presented by that domain, and do a weird dance in Keychain

For instance, for the s3 endpoint, you can use curl or the browser to verify that the root CA trusted for it is "Baltimore CyberTrust Root".

- Search for it in Keychain (if it's not present - **add it**)
- Double click on it
- Expand the "trust" section. The first dropdown should be set to "always trust". Change it to "never trust". Close the dialog, and authenticate to save the changes.
- Double click on it again, expand trust and change it to "use system defaults" (*my attempts to change it directly to this value, without going through "never trust" always failed silently. I blame the Keychain ui for being weird*)

I encountered this problem with many programs written in Go using the standard TLS library.

This issue might describe a less "magic" approach to my workaround golang/go#24652



# TODO

- [ ] initial code import
- [ ] tune security group rules (allow incoming HTTPS)
- [ ] use Nginx module from earlier
- [ ] deploy
- [ ] test for a general accesebility
- [ ] grab some content from our repo
- [ ] create test code
- [ ] run test code localy
