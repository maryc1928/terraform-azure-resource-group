variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
  validation {
    condition     = length(var.resource_group_name) > 0 && length(var.resource_group_name) <= 90
    error_message = "The resource group name must not be an empty string and must be less than 90 characters."
  }
}

variable "location" {
  description = "The location/region where the resources will be created."
  type        = string
  validation {
    condition     = contains(["eastus", "westus", "westeurope", "southeastasia", "uksouth"], var.location)
    error_message = "The location must be either eastus, westus, westeurope, southeastasia, or uksouth."
  }
}