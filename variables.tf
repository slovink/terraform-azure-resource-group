#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "repository" {
  type        = string
  default     = "https://github.com/slovink/terraform-azure-resource-group"
  description = "Terraform current module repo"

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^https://", var.repository))
    error_message = "The module-repo value must be a valid Git repo link."
  }
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "business_unit" {
  type        = string
  default     = "Corp"
  description = "Top-level division of your company that owns the subscription or workload that the resource belongs to. In smaller organizations, this tag might represent a single corporate or shared top-level organizational element."
}

variable "managedby" {
  type        = string
  default     = ""
  description = "slovink"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the module creation."
}


## Resource Group

variable "location" {
  type        = string
  default     = ""
  description = "Location where resource should be created."
}

variable "create" {
  type        = string
  default     = "90m"
  description = "Used when creating the Resource Group."
}

variable "read" {
  type        = string
  default     = "5m"
  description = "Used when retrieving the Resource Group."
}

variable "update" {
  type        = string
  default     = "90m"
  description = "Used when updating the Resource Group."
}

variable "delete" {
  type        = string
  default     = "90m"
  description = "Used when deleting the Resource Group."
}
