resource "azurerm_resource_group" "mc_iam_rg" {
  name     = "mc-iam-rg"
  location = "East US"
  tags = {
    Project = "multi-cloud-iam"
    Owner   = "olumide"
  }
}

resource "azurerm_role_assignment" "tf_reader" {
  scope                = azurerm_resource_group.mc_iam_rg.id
  role_definition_name = "Reader"
  principal_id         = data.azurerm_client_config.current.object_id
}

data "azurerm_client_config" "current" {}
