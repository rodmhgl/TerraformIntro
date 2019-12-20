resource "azurerm_resource_group" "main" {
  name     = "rn-resources"
  location = "West US 2"

  tags = {
    Owner = "Rod Stewart"
  }

}