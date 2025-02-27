#Create resource group


resource "azurerm_resource_group" "test" {
  name     = "example-resources"
  location = "North Europe"
}
