# SQL SERVER
resource "azurerm_sql_server" "sqlserver" {
  name                         = "avasql1"
  resource_group_name          = azurerm_resource_group.multi_deploy_rg.name
  location                     = azurerm_resource_group.multi_deploy_rg.location
  version                      = "12.0"
  administrator_login          = "rnadmin"
  administrator_login_password = "4-S3cr37#-4p455w0rd"
}

resource "azurerm_sql_virtual_network_rule" "sqlvnetrule" {
  name                = "sql-vnet-rule"
  resource_group_name = azurerm_resource_group.multi_deploy_rg.name
  server_name         = azurerm_sql_server.sqlserver.name
  subnet_id           = azurerm_subnet.dbsub.id
}

# DB SUBNET
resource "azurerm_subnet" "dbsub" {
  name                 = "datasub"
  resource_group_name  = azurerm_resource_group.multi_deploy_rg.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = "10.0.3.0/24"
  service_endpoints    = ["Microsoft.Sql"]
}