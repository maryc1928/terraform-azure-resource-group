output "resource_group_name" {
    description = "The name of the resource group in which the resources were created."
    value       = azurerm_resource_group.rg.name
}

output "resource_group_id" {
    description = "The ID of the resource group in which the resources were created."
    value       = azurerm_resource_group.rg.id
}