# --- azurerm_static_web_app ---
output "static_web_apps_id" {
  description = "Map of id values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_id
}

output "static_web_apps_api_key" {
  description = "Map of api_key values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_api_key
  sensitive   = true
}

output "static_web_apps_app_settings" {
  description = "Map of app_settings values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_app_settings
}

output "static_web_apps_basic_auth" {
  description = "Map of basic_auth values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_basic_auth
  sensitive   = true
}

output "static_web_apps_configuration_file_changes_enabled" {
  description = "Map of configuration_file_changes_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_configuration_file_changes_enabled
}

output "static_web_apps_default_host_name" {
  description = "Map of default_host_name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_default_host_name
}

output "static_web_apps_identity" {
  description = "Map of identity values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_identity
}

output "static_web_apps_location" {
  description = "Map of location values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_location
}

output "static_web_apps_name" {
  description = "Map of name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_name
}

output "static_web_apps_preview_environments_enabled" {
  description = "Map of preview_environments_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_preview_environments_enabled
}

output "static_web_apps_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_public_network_access_enabled
}

output "static_web_apps_repository_branch" {
  description = "Map of repository_branch values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_repository_branch
}

output "static_web_apps_repository_token" {
  description = "Map of repository_token values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_repository_token
  sensitive   = true
}

output "static_web_apps_repository_url" {
  description = "Map of repository_url values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_repository_url
}

output "static_web_apps_resource_group_name" {
  description = "Map of resource_group_name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_resource_group_name
}

output "static_web_apps_sku_size" {
  description = "Map of sku_size values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_sku_size
}

output "static_web_apps_sku_tier" {
  description = "Map of sku_tier values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_sku_tier
}

output "static_web_apps_tags" {
  description = "Map of tags values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = module.static_web_apps.static_web_apps_tags
}

# --- azurerm_static_web_app_custom_domain ---
output "static_web_app_custom_domains_id" {
  description = "Map of id values across all static_web_app_custom_domains, keyed the same as var.static_web_app_custom_domains"
  value       = module.static_web_app_custom_domains.static_web_app_custom_domains_id
}

output "static_web_app_custom_domains_domain_name" {
  description = "Map of domain_name values across all static_web_app_custom_domains, keyed the same as var.static_web_app_custom_domains"
  value       = module.static_web_app_custom_domains.static_web_app_custom_domains_domain_name
}

output "static_web_app_custom_domains_static_web_app_id" {
  description = "Map of static_web_app_id values across all static_web_app_custom_domains, keyed the same as var.static_web_app_custom_domains"
  value       = module.static_web_app_custom_domains.static_web_app_custom_domains_static_web_app_id
}

output "static_web_app_custom_domains_validation_token" {
  description = "Map of validation_token values across all static_web_app_custom_domains, keyed the same as var.static_web_app_custom_domains"
  value       = module.static_web_app_custom_domains.static_web_app_custom_domains_validation_token
  sensitive   = true
}

output "static_web_app_custom_domains_validation_type" {
  description = "Map of validation_type values across all static_web_app_custom_domains, keyed the same as var.static_web_app_custom_domains"
  value       = module.static_web_app_custom_domains.static_web_app_custom_domains_validation_type
}

# --- azurerm_static_web_app_function_app_registration ---
output "static_web_app_function_app_registrations_id" {
  description = "Map of id values across all static_web_app_function_app_registrations, keyed the same as var.static_web_app_function_app_registrations"
  value       = module.static_web_app_function_app_registrations.static_web_app_function_app_registrations_id
}

output "static_web_app_function_app_registrations_function_app_id" {
  description = "Map of function_app_id values across all static_web_app_function_app_registrations, keyed the same as var.static_web_app_function_app_registrations"
  value       = module.static_web_app_function_app_registrations.static_web_app_function_app_registrations_function_app_id
}

output "static_web_app_function_app_registrations_static_web_app_id" {
  description = "Map of static_web_app_id values across all static_web_app_function_app_registrations, keyed the same as var.static_web_app_function_app_registrations"
  value       = module.static_web_app_function_app_registrations.static_web_app_function_app_registrations_static_web_app_id
}


