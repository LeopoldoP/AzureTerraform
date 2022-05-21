#Deploy Network Security Group
resource "azurerm_network_security_group" "NSG" {
  name                = "nsg-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location



  security_rule {

    name                       = "rdp_port"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }
}