variable "project_name" {
  description = "Name of the fake infrastructure project."
  type        = string
  default     = "fake-iac-project"
}

variable "environment" {
  description = "Deployment environment for the example infrastructure."
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Cloud region used in the mock configuration."
  type        = string
  default     = "us-east-1"
}
