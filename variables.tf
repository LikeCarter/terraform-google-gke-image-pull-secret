variable "cluster_name" {
  description = "Cluster name"
  type        = string
  default     = "aws-cluster-develop"
}

variable "project" {
  type        = string
  description = "Google Project ID"
}

variable "region" {
  type        = string
  description = "Google Region"
}

variable "namespaces" {
  type        = set(string)
  description = "Kubernetes namespaces to deploy image pull secret to"
}

variable "service_account_id" {
  type        = string
  default     = ""
  description = "ID for service account"
}

variable "service_account_display_name" {
  type        = string
  default     = ""
  description = "Service account display name"
}

variable "hub" {
  type        = string
  default     = "https://index.docker.io/v1/"
  description = "Domain used for pulling"
}

variable "docker_username" {
  type        = string
  description = "Username for docker auth"
}

variable "docker_password" {
  type        = string
  description = "Password for docker auth"
}

variable "docker_email" {
  type        = string
  description = "Email for docker auth"
}