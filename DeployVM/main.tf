resource "azurerm_resource_group" "resource_gp" {
  name     = "rn-Demo"
  location = "eastus"

  tags {
    Owner = "Rod Stewart"
  }
}
