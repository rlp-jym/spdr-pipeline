variable "project_name" {
  description = "The GCP project name where resources will be created."
  default     = "rlp-jym-projects"
  type        = string
}

variable "provider_region" {
  description = "The GCP region where resources will be created."
  default     = "asia-southeast1"
  type        = string
}

variable "bucket_name" {
  description = "The name of the storage bucket to create."
  default     = "rlp-jym-projects-spdr-etfs"
  type        = string
}

variable "dataset_id" {
  description = "The ID of the BigQuery dataset to create."
  default     = "spdr_etfs"
  type        = string
}

variable "resource_location" {
  description = "The location of the resources to create."
  default     = "US"
  type        = string
}