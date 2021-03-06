
variable "org_id" {
  description = "The Organization ID to monitor."
}

variable "lockdown_project" {
  description = "The GCP project to deploy lockdown resources to."
}

variable "region" {
  description = "The region to deploy lockdown resources to."
}

variable "name" {
  description = "A prefix for resource names."
}

variable "function_perms" {
  type        = list(string)
  description = "The Cloud Function Cloud IAM permissions."
}

variable "function_name" {
  type        = string
  description = "name of the function"
}

variable "log_sink_filter" {
  description = "A filter so the CFN does not trigger itself. Unique per CFN"
}

variable "mode" {
  type        = string
  description = "The mode to run lockdown in, either read or write."
}

variable "topic_id" {
  type        = string
  description = "The Pub/Sub topic ID to send alerts to."
}

variable "list_type" {
  description = "The type of list being passed in to the Cloud Function. The choices are allow, deny, or N/A."
  type        = string
}

variable "project_list" {
  description = "A list of project IDs to use as a denylist or allowlist."
  type        = string
}

variable "function_memory" {
  type        = number
  description = "Memory available to a function"
}
