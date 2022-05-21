# Deploy VM Client 01
resource "azurerm_windows_virtual_machine" "vmclient" {
  name                  = "vmclient01" #nome_da_vm, pode ser alterado
  computer_name         = "vmclient01" #nome_da_vm, pode ser alterado
  resource_group_name   = azurerm_resource_group.RG.name
  location              = azurerm_resource_group.RG.location
  size                  = "Standard_B2ms"
  admin_username        = "Digite_Seu_Usuario"
  admin_password        = "Digite_Sua_Senha"
  network_interface_ids = [azurerm_network_interface.NICCLIENT01.id]

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-10"
    sku       = "20h2-pro"
    version   = "latest"
  }
  os_disk {
    name                 = "osdisk-vmclient01-homolog-001" #nome_do_disco pode ser alterado
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }

}
# Deploy VM Client 02
resource "azurerm_windows_virtual_machine" "vmclient02" {
  name                  = "vmclient02"
  computer_name         = "vmclient02"
  resource_group_name   = azurerm_resource_group.RG.name
  location              = azurerm_resource_group.RG.location
  size                  = "Standard_B2ms"
  admin_username        = "leopoldo.cardoso"
  admin_password        = "pcardoso@6801"
  network_interface_ids = [azurerm_network_interface.NICCLIENT02.id]

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-10"
    sku       = "20h2"
    version   = "latest"
  }
  os_disk {
    name                 = "osdisk-vmclient02-homolog-001" #nome_do_disco pode ser alterado
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  tags = {
    Environment = "IAC TERRAFORM"
  }
}