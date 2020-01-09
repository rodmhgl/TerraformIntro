resource "azurerm_resource_group" "resource_gp" {
  name  = "rn-module-demo"
  location = "eastus"

  tags = {
    Owner = "Rod Stewart"
  }
}