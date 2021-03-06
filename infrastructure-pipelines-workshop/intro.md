This is the workspace for the Terraform **Infrastructure Pipelines Workshop** and contains the latest version of Terraform CLI and kubectl.

This workshop comprises of four main steps, estimated to take a total of 45 minutes. The first two steps will be done using Terraform Cloud and GitHub.

1. Setup Terraform Cloud workspaces
2. Deploy Kubernetes, Consul and Vault
3. Verify deployments
4. Clean up resources


By the end of this scenario, you will accomplish three things using Terraform Cloud run triggers.

- Deploy a Kubernetes cluster on Google Cloud.
- Deploy Consul on the Kubernetes cluster using a Helm chart
- Deploy Vault (configured to use a Consul backend) on the Kubernetes cluster using a Helm chart.

The Terraform configuration for each resource (Kubernetes, Consul, and Vault) are modularized and committed to their respective version control system repositories. First, you will create and configure TFC workspaces for each resource, then link them together using run triggers.
