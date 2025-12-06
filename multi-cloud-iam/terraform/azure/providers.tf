terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" }
  }
}
provider "azurerm" {
  features {}
  tenant_id       = var.azure_tenant_id
  subscription_id = var.azure_subscription_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
}
variable "azure_tenant_id"       { type = string }
variable "azure_subscription_id" { type = string }
variable "azure_client_id"       { type = string }
variable "azure_client_secret"   { type = string }
