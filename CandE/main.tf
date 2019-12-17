#Resource Group Creation
resource "azurerm_resource_group" "resource_gp" {
  name     = "RN-CandE-Demo"
  location = "eastus"

  tags = {
    Owner = "Rod Stewart"
  }
}
