## Example usage 

This how-to demonstrates usage of "nginxweb" module (https://github.com/Galser/tf-nginx-module)

- Let's define sample main code, in file [main.tf](main.tf) :
    ```terraform
    module "nginxweb" {
      source                = "github.com/Galser/tf-nginx-module"

      ami                   = var.amis[var.region]
      instance_type         = var.instance_type
      subnet_id             = var.subnet_ids[var.region]
      vpc_security_group_id = var.vpc_security_group_ids[var.region]    
    }
    ```
    > Note - first line is reference this repository, to be included as Terraform module.
    > it assumes some defaults :
    > - that you have SSH key located in files "~/.ssh/id_rsa" and "~/.ssh/id_rsa.pub"
    > - that you want to deploy 3 identical instances (e.g. we not setting on of the module inputs "max_web_servers" )

- We will need to specify those minimal set of the input parameters, for example in file [variables.tf](variables.tf) :
    ```terraform
    variable "region" {
      default = "eu-central-1"
    }

    variable "subnet_ids" {
      type = "map"
      default = {
          "eu-central-1" = "subnet-7282ce1a"
      }
    }

    variable "amis" {
      type = "map"
      default = {
          "us-east-2"    = "ami-00f03cfdc90a7a4dd",
          "eu-central-1" = "ami-08a162fe1419adb2a"
      }
    }

    variable "vpc_security_group_ids" {
      type = "map"
      default = {
          "us-east-2"    = "sg-435345ce45e345343" # sg not tested 
          "eu-central-1" = "sg-04c059aea335d8f69" # sg tested
      }
    }

    variable "instance_type" {
      default = "t2.micro"
    }
    ```
- Now, we are going to use AWS provider, let's define, file [provider_aws.tf](provider_aws.tf) :
    ```terraform
    provider "aws" {
      profile    = "default"
      region     = "${var.region}"
    }
    ```
- And the last step - our outputs, if we want to see in a nice way, how to connect to our servers. Define them in [outputs.tf](outputs.tf) :
    ```terraform
    output "public_ips" {
      value = "${module.nginxweb.public_ips}"
    }

    output "public_dns" {
      value = "${module.nginxweb.public_dns}"
    }
    ```
- Before using `apply` for first time with above mentioned code we need to inform terraform about our module. Execute :
    ```
    terraform init
    ```
    Output :
    ```
    Initializing modules...
    Downloading github.com/Galser/tf-nginx-module for nginxweb...
    - nginxweb in .terraform/modules/nginxweb

    Initializing the backend...

    Initializing provider plugins...
    - Checking for available provider plugins...
    - Downloading plugin for provider "aws" (hashicorp/aws) 2.31.0...
    ...
    ```
- Now let's apply our code changes : 
    ```
    terraform apply
    ```
    Output :
    ```
    Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

    Outputs:

    public_dns = [
      "ec2-18-184-53-176.eu-central-1.compute.amazonaws.com",
      "ec2-3-120-191-149.eu-central-1.compute.amazonaws.com",
      "ec2-18-194-103-132.eu-central-1.compute.amazonaws.com",
    ]
    public_ips = [
      "18.184.53.176",
      "3.120.191.149",
      "18.194.103.132",
    ]
    ```
    So, the module had created and provisioned set of 3 servers running basic Nginx web server. Let's check that our servers indeed can server web pages. To test with [cURL](https://curl.haxx.se/)  one of the IPs from outputs, execute  :  
    ```
    curl 18.184.53.176
    ```
    Output : 
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <title>Welcome to nginx!</title>
    <style>
        body {
            width: 35em;
            margin: 0 auto;
            font-family: Tahoma, Verdana, Arial, sans-serif;
        }
    </style>
    </head>
    <body>
    <h1>Welcome to nginx!</h1>
    <p>If you see this page, the nginx web server is successfully installed and
    working. Further configuration is required.</p>

    <p>For online documentation and support please refer to
    <a href="http://nginx.org/">nginx.org</a>.<br/>
    Commercial support is available at
    <a href="http://nginx.com/">nginx.com</a>.</p>

    <p><em>Thank you for using nginx.</em></p>
    </body>
    </html>
    ```
- As the last step run `destroy` to clean:
    ```
    terraform destroy
    ```
    Output:
    ```
    module.nginxweb.aws_instance.nginxweb[0]: Destroying... [id=i-002f87e7bbc6b4f9a]
    module.nginxweb.aws_instance.nginxweb[1]: Destroying... [id=i-002d0fa34db8c0a04]
    module.nginxweb.aws_instance.nginxweb[2]: Destroying... [id=i-0f57b24017a5815b7]
    module.nginxweb.aws_instance.nginxweb[2]: Still destroying... [id=i-0f57b24017a5815b7, 10s elapsed]
    module.nginxweb.aws_instance.nginxweb[0]: Still destroying... [id=i-002f87e7bbc6b4f9a, 10s elapsed]
    module.nginxweb.aws_instance.nginxweb[1]: Still destroying... [id=i-002d0fa34db8c0a04, 10s elapsed]
    module.nginxweb.aws_instance.nginxweb[1]: Still destroying... [id=i-002d0fa34db8c0a04, 20s elapsed]
    module.nginxweb.aws_instance.nginxweb[2]: Still destroying... [id=i-0f57b24017a5815b7, 20s elapsed]
    module.nginxweb.aws_instance.nginxweb[0]: Still destroying... [id=i-002f87e7bbc6b4f9a, 20s elapsed]
    module.nginxweb.aws_instance.nginxweb[2]: Destruction complete after 30s
    module.nginxweb.aws_instance.nginxweb[0]: Destruction complete after 30s
    module.nginxweb.aws_instance.nginxweb[1]: Destruction complete after 30s
    module.nginxweb.aws_key_pair.tf200-nginxweb-key: Destroying... [id=tf200-nginxweb-key]
    module.nginxweb.aws_key_pair.tf200-nginxweb-key: Destruction complete after 0s

    Destroy complete! Resources: 4 destroyed.    
    ```
This concludes the "Example usage" section. Thank you.


