# Google Cloud Platform HashiCorp Terraform Monorepo

This repository is a monorepo for managing Google Cloud infrastructure using Terraform. Each directory within this repository represents a separate project in Google Cloud. Terraform is used to define, provision, and manage the infrastructure for these projects.

## Basics

### Terraform
Terraform is an open-source infrastructure as code software tool created by HashiCorp. It allows users to define and provision data center infrastructure using a high-level configuration language. Terraform manages external resources (such as public cloud infrastructure, private cloud infrastructure, network appliances, software as a service, and platform as a service) with a "provider" model.

- [Terraform Documentation](https://www.terraform.io/docs)

### Google Cloud Run
Google Cloud Run is a managed compute platform that automatically scales your stateless containers. You can run containers that are invocable via HTTP requests. Cloud Run abstracts away all infrastructure management, so you can focus on what matters most — building great applications.

- [Google Cloud Run Documentation](https://cloud.google.com/run/docs)

## Repository Structure
Each directory in this repository represents a separate project in Google Cloud. The Terraform state for each project is stored in a Google Cloud Storage bucket to ensure persistence and collaboration.


##
Crafted with care by Robin Pohlman at Pohlman Protean AB.