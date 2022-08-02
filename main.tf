resource "random_id" "server" {
  byte_length = 8
}

resource "azurerm_resource_group" "rg" {
  name     = "tfeautorgdnd-${random_id.server.hex}"
  location = "${var.region}"
}

resource "azurerm_storage_account" "stor" {
  name                     = "stor${random_id.server.hex}"
  location                 = "${var.region}"
  resource_group_name      = "${azurerm_resource_group.rg.name}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_replication_type}"
}

resource "azurerm_storage_account1" "stor" {
  name                     = "stor${random_id.server.hex}"
  location                 = "${var.region}"
  resource_group_name      = "${azurerm_resource_group.rg.name}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_replication_type}"
}

resource "azurerm_storage_account2" "stor" {
  name                     = "stor${random_id.server.hex}"
  location                 = "${var.region}"
  resource_group_name      = "${azurerm_resource_group.rg.name}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_replication_type}"
}
