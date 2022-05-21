#deploy publico ip vmserver
resource "azurerm_public_ip" "PIP" {
  name                = "pip-vmdc01-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location

  allocation_method = "Dynamic"
}

#deploy public ip vmclient01
resource "azurerm_public_ip" "PIPCL" {

  name                = "pip-vmclient01-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  allocation_method   = "Dynamic"

  tags = {
    Environment = "IAC TERRAFORM"
  }

}

#deploy public ip vmclient02
resource "azurerm_public_ip" "PIPCL02" {

  name                = "pip-vmclient02-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  allocation_method   = "Dynamic"

  tags = {
    Environment = "IAC TERRAFORM"
  }

}

#deploy public ip vmwsus
resource "azurerm_public_ip" "PIPWSUS" {

  name                = "pip-vmwsus-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  allocation_method   = "Dynamic"

  tags = {
    Environment = "IAC TERRAFORM"
  }

}