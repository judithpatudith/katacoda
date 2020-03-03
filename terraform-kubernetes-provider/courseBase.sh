#!/bin/sh

# Check helm and minikube completion
source <(helm completion bash)
source <(minikube completion bash)

minikube addons enable metrics-server

# Install Terraform and init config
cd ~
curl -O https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
unzip terraform_0.12.20_linux_amd64.zip -d /usr/local/bin/

# Add Terraform Cloud config
echo -e "// terraform {
//   backend \"remote\" {
//     organization = \"my-organization\"
//     workspaces {
//       name = \"learn-terraform-k8s\"
//     }
//   }
// }
\n\n" > ~/main.tf

cat <<EOT >> ~/.terraformrc
credentials "app.terraform.io" {
  token = ""
}
EOT

clear
echo "Ready!"