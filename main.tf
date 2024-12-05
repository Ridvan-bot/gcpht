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

locals {
  custom_domain_name = trim(var.custom_domain, ".")
}

resource "google_cloud_run_service" "dev-pohlmanprotean-website" {
  autogenerate_revision_name = false
  name                       = var.service_name_1
  location                   = var.region
  project                    = var.project_id

  template {
    metadata {
      annotations = {
        "autoscaling.knative.dev/maxScale"     = "100"
        "run.googleapis.com/client-name"       = "gcloud"
        "run.googleapis.com/client-version"    = "502.0.0"
        "run.googleapis.com/startup-cpu-boost" = "false"
      }
      labels = {
        "namespace"                           = var.project_id
        "run.googleapis.com/startupProbeType" = "Custom"
      }
    }
    spec {
      container_concurrency = 80
      service_account_name  = var.service_account_name
      timeout_seconds       = 300

      containers {
        image = var.image
        name  = var.imag_name
        ports {
          container_port = var.container_port
          name           = "http1"
        }
        resources {
          limits = {
            cpu    = "1000m"
            memory = "512Mi"
          }
        }
        startup_probe {
          failure_threshold    = 3
          initial_delay_seconds = 0
          period_seconds       = 240
          timeout_seconds      = 10
          tcp_socket {
            port = 8080
          }
        }
      }
    }
  }

  traffic {
    latest_revision = true
    percent         = 100
  }
  traffic {
    latest_revision = false
    percent         = 0
    revision_name   = "dev-pohlmanprotean-website-00002-gij"
    tag             = "v0-12-0"
  }
}

resource "google_cloud_run_domain_mapping" "custom_domain_mapping" {
  location = var.region
  name     = local.custom_domain_name
  metadata {
    namespace = var.project_id
  }
  spec {
    route_name = google_cloud_run_service.dev-pohlmanprotean-website.name
  }
}
