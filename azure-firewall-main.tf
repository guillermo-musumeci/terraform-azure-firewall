####################
## Azure Firewall ##
####################

# Create the public ip for Azure Firewall
resource "azurerm_public_ip" "azure_firewall_public_ip" {
  depends_on=[azurerm_resource_group.core-rg]

  name                = "${var.company}-core-azure-firewall-pip"
  location            = azurerm_resource_group.core-rg.location
  resource_group_name = azurerm_resource_group.core-rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
  
  tags = {
    environment = var.environment
  }
}

# Create the Azure Firewall
resource "azurerm_firewall" "azure_firewall" {
  depends_on=[
    azurerm_resource_group.core-rg, 
    azurerm_public_ip.azure_firewall_public_ip, 
    azurerm_subnet.AzureFirewallSubnet]

  name                = "${var.company}-core-azure-firewall"
  location            = azurerm_resource_group.core-rg.location
  resource_group_name = azurerm_resource_group.core-rg.name

  ip_configuration {
    name                 = "${var.company}-core-azure-firewall-configuration"
    subnet_id            = azurerm_subnet.AzureFirewallSubnet.id
    public_ip_address_id = azurerm_public_ip.azure_firewall_public_ip.id
  }
 
  tags = {
    environment = var.environment
  }
}