terraform {
  backend "gcs" {
    bucket  = "terraform-state-dev-pohlmanprotean"
    prefix  = "dev-pohlmanprotean-website/terraform/state"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file)
}

module "cloudrun" {
  source = "./modules/cloudrun"
}


 module "custom_domain" {
   source = "./modules/custom_domain"
   service_name   = module.cloudrun.service_name
 }

 module "iam" {
   source = "./modules/iam"
   service_name   = module.cloudrun.service_name
   service_location = module.cloudrun.service_location
 }




