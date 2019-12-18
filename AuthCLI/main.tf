provider "azurerm" { 
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used 
  version = "=1.38.0" 
  #subscription_id = "00000000-0000-0000-0000-000000000000"
  #tenant_id = "00000000-0000-0000-0000-000000000000" 
}

resource "azurerm_resource_group" "resource_gp" {
  name     = "RN-azclisubscription-Demo"
  location = "eastus"

  tags = {
    Owner = "Rod Stewart"
  }
}