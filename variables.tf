variable "project_name" {
    default = "rlp-jym-projects"
    description = "The GCP project name where resources will be created."
    type = string
}

variable "provider_region" {
    default = "asia-southeast1"
    description = "The GCP region where resources will be created."
    type = string
}

variable "bucket_name" {
    default = "rlp-jym-projects-spdr-etfs"
    description = "The name of the storage bucket to create."   
    type = string
}

variable "dataset_id" {
    default = "spdr_etfs"
    description = "The ID of the BigQuery dataset to create."
    type = string
}

variable "resource_location" {
    default = "US"
    description = "The location of the resources to create."
    type = string
}