# Deploy VMSERVER-DC01
resource "azurerm_windows_virtual_machine" "vmsrv" {
  name                  = "vmdc01"
  computer_name         = "vmdc01"
  resource_group_name   = azurerm_resource_group.RG.name
  location              = azurerm_resource_group.RG.location
  size                  = "Standard_B2ms"
  admin_username        = "Digite_Seu_Usuario"
  admin_password        = "Digite_Sua_Senha"
  network_interface_ids = [azurerm_network_interface.NIC.id]

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  os_disk {
    name                 = "osdisk-vmdc01-homolog-001" #nome_do_disco pode ser alterado
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }

}

# Deploy VMSERVER-WSUS
resource "azurerm_windows_virtual_machine" "vmsrvwsus" {
  name                  = "vmwsus" #nome_da_vm no azure, pode ser alterado
  computer_name         = "vmwsus" #nome_da_vm no windows, pode ser alterado
  resource_group_name   = azurerm_resource_group.RG.name
  location              = azurerm_resource_group.RG.location
  size                  = "Standard_B2ms"
  admin_username        = "Digite_Seu_Usuário"
  admin_password        = "Digite_Sua_Senha"
  network_interface_ids = [azurerm_network_interface.NICWSUS.id]

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  os_disk {
    name                 = "osdisk-vmdwsus-homolog-001" #nome_do_disco, pode ser alterado
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }

}