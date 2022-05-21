# Deploy VNET
resource "azurerm_virtual_network" "VNET" {
  name                = "vnet-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  address_space       = ["10.40.0.0/20"]
  tags = {
    Environment = "IAC TERRAFORM"
  }
}

# Deploy subnet
resource "azurerm_subnet" "SNET" {
  name                 = "snet-homolog-001"
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.VNET.name
  address_prefixes     = ["10.40.0.0/24"]
}
 