resource "azurerm_storage_account" "storage" {
  name                     = "sthomologacao"
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "IAC TERRAFORM"
  }
}