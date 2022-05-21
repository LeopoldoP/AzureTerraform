# Deploy network interface vmdc01
resource "azurerm_network_interface" "NIC" {
  name                = "nic-vmdc01-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  ip_configuration {
    name                          = "nic-eastus2-config"
    subnet_id                     = azurerm_subnet.SNET.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PIP.id
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }
}

# Deploy network interface client01
resource "azurerm_network_interface" "NICCLIENT01" {
  name                = "nic-vmnicclient01-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  ip_configuration {
    name                          = "nicclient01-config"
    subnet_id                     = azurerm_subnet.SNET.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PIPCL.id
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }
}

# Deploy network interface client02
resource "azurerm_network_interface" "NICCLIENT02" {
  name                = "nic-vmnicclient02-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  ip_configuration {
    name                          = "nicclient02-config"
    subnet_id                     = azurerm_subnet.SNET.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PIPCL02.id
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }
}

# Deploy network interface vmwsus
resource "azurerm_network_interface" "NICWSUS" {
  name                = "nic-vmwsus-homolog-001"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  ip_configuration {
    name                          = "nicvmwsus-eastus2-config"
    subnet_id                     = azurerm_subnet.SNET.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PIPWSUS.id
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }
}
