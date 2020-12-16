variable "project_id" {
  type        = string
  description = "Set the GCP project id"
}

variable "project_region" {
  type        = string
  description = "Set the region of the GCP project"
}

variable "project_zone" {
  type        = string
  description = "Set the zone of the GCP project"
}

variable "environment" {
  type        = string
  description = "Set the environment prod or dev"
}