terraform {
	required_providers {
		google = {
			source = "hashicorp/google"
			version = "5.6.0"
		}
	}
}

provider "google" {
	project = "rlp-jym-projects"
	region  = "asia-southeast1"
}

resource "google_storage_bucket" "spdr-etfs" {
	name          = "rlp-jym-projects-spdr-etfs"
	location      = "US"
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