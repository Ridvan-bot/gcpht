locals {
  custom_domain_name = trim(var.custom_domain, ".")
}

resource "google_cloud_run_domain_mapping" "custom_domain_mapping" {
  location = var.region
  name     = local.custom_domain_name
  metadata {
    namespace = var.project_id
  }
  spec {
    route_name = var.service_name_1
  }
}
