### Fester Deployment Settings
variable "fester_deployment_name" {
  type = string
  default = "fester"
}

variable "fester_deployment_namespace" {
  type = string
  default = "fester-namespace"
}

variable "fester_deployment_replicas" {
  type = number
  default = 1
}

variable "fester_deployment_labels" {
  type = map(string)
  default = {
    app = "fester"
  }
}

variable "fester_deployment_container_image_url" {
  type = string
  default = "uclalibrary/fester"
}

variable "fester_deployment_container_image_version" {
  type = string
  default = "latest"
}

variable "fester_deployment_container_name" {
  type = string
  default = "fester"
}

variable "fester_deployment_container_image_pull_policy" {
  type = string
  default = "Always"
}

variable "fester_deployment_container_port" {
  type = number
  default = 8888
}

variable "image_pull_secrets" {
  type = string
  default = "pull-secrets"
}

###############################################################################################################
# The following default variables represent a subset of environment variables to override the defaults.
# It assumes configuring an S3 bucket for cache and as a source. Please override the map in a external
# tfvars file if customization is desired.
###############################################################################################################
variable "fester_deployment_container_env" {
  type = map(string)
  default = {
    FESTER_HTTP_PORT = "8888"
    FESTER_S3_ACCESS_KEY = "yourkey"
    FESTER_S3_BUCKET = "yourbucket"
    FESTER_S3_REGION = "yourregion"
    FESTER_S3_SECRET_KEY = "yoursecretkey"
    IIIF_BASE_URL = "youriiifurl"
  }
}


variable "fester_deployment_s3_access_key" {
  type = string
  default = "enteryours3accesskey"
}

variable "fester_deployment_s3_secret_key" {
  type = string
  default = "enteryours3secretkey"
}

variable "fester_deployment_cpu_limit" {
  type = string
  default = "1"
}

variable "fester_deployment_cpu_request" {
  type = string
  default = "0.25"
}

variable "fester_deployment_memory_limit" {
  type = string
  default = "1024Mi"
}

variable "fester_deployment_memory_request" {
  type = string
  default = "128Mi"
}

locals {
  fester_deployment_container_image_full_url = "${var.fester_deployment_container_image_url}:${var.fester_deployment_container_image_version}"
}
