#PostGreSQL Server
resource "azurerm_postgresql_server" "postgres_server" {
  name                = "${var.name}-server"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.common_tags

  sku_name                = var.server_sku_name
  version                 = var.server_prop.version
  ssl_enforcement_enabled = var.server_prop.ssl_enforcement_enabled

  administrator_login          = var.administrator_logon_details.username
  administrator_login_password = var.administrator_logon_details.password

}

# PostGreSQL database
resource "azurerm_postgresql_database" "postgres_database" {
  name                = "${var.name}-db"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgres_server.name
  charset             = var.database_prop.charset
  collation           = var.database_prop.collation
}
