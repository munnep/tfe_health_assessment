# Terraform Enterprise Health Assessment

Terraform Enterprise/Terraform Cloud have the option of a Health Assessment on workspaces. This is divided into 2 things

Drift detection determines whether your real-world infrastructure matches your Terraform state file.

Continuous validation determines whether custom conditions in the workspace’s configuration continue to pass after Terraform provisions the infrastructure.

[Link to the official documentation](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/health)

In this repo we will create a workspace that uses this repository with a Health Check Assessment

# How to

- 