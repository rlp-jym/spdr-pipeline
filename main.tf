terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  project = var.project_name
  region = var.provider_region
}


resource "google_storage_bucket" "spdr-etfs" {
  name = var.bucket_name
  location = var.resource_location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "spdr-etfs" {
  dataset_id = var.dataset_id
  location = var.resource_location
  delete_contents_on_destroy = false
}