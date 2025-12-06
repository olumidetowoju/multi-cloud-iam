resource "azurerm_resource_group" "rg" {
  name     = "mc-iam-rg"
  location = "eastus"
}
data "azurerm_client_config" "current" {}
resource "azurerm_role_assignment" "sp_reader" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Reader"
  principal_id         = data.azurerm_client_config.current.object_id
}
