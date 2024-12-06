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
          container_port = 8080
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
    revision_name   = "dev-pohlmanprotean-website-00003-bum"
    tag             = "v0-12-0"
  }
}

