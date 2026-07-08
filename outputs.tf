# --- azurerm_static_web_app ---
output "static_web_apps" {
  description = "All static_web_app resources"
  value       = module.static_web_apps.static_web_apps
  sensitive   = true
}
output "static_web_apps_api_key" {
  description = "List of api_key values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.api_key]
  sensitive   = true
}
output "static_web_apps_app_settings" {
  description = "List of app_settings values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.app_settings]
}
output "static_web_apps_basic_auth" {
  description = "List of basic_auth values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.basic_auth]
  sensitive   = true
}
output "static_web_apps_configuration_file_changes_enabled" {
  description = "List of configuration_file_changes_enabled values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.configuration_file_changes_enabled]
}
output "static_web_apps_default_host_name" {
  description = "List of default_host_name values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.default_host_name]
}
output "static_web_apps_identity" {
  description = "List of identity values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.identity]
}
output "static_web_apps_location" {
  description = "List of location values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.location]
}
output "static_web_apps_name" {
  description = "List of name values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.name]
}
output "static_web_apps_preview_environments_enabled" {
  description = "List of preview_environments_enabled values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.preview_environments_enabled]
}
output "static_web_apps_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.public_network_access_enabled]
}
output "static_web_apps_repository_branch" {
  description = "List of repository_branch values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.repository_branch]
}
output "static_web_apps_repository_token" {
  description = "List of repository_token values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.repository_token]
  sensitive   = true
}
output "static_web_apps_repository_url" {
  description = "List of repository_url values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.repository_url]
}
output "static_web_apps_resource_group_name" {
  description = "List of resource_group_name values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.resource_group_name]
}
output "static_web_apps_sku_size" {
  description = "List of sku_size values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.sku_size]
}
output "static_web_apps_sku_tier" {
  description = "List of sku_tier values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.sku_tier]
}
output "static_web_apps_tags" {
  description = "List of tags values across all static_web_apps"
  value       = [for k, v in module.static_web_apps.static_web_apps : v.tags]
}


# --- azurerm_static_web_app_custom_domain ---
output "static_web_app_custom_domains" {
  description = "All static_web_app_custom_domain resources"
  value       = module.static_web_app_custom_domains.static_web_app_custom_domains
  sensitive   = true
}
output "static_web_app_custom_domains_domain_name" {
  description = "List of domain_name values across all static_web_app_custom_domains"
  value       = [for k, v in module.static_web_app_custom_domains.static_web_app_custom_domains : v.domain_name]
}
output "static_web_app_custom_domains_static_web_app_id" {
  description = "List of static_web_app_id values across all static_web_app_custom_domains"
  value       = [for k, v in module.static_web_app_custom_domains.static_web_app_custom_domains : v.static_web_app_id]
}
output "static_web_app_custom_domains_validation_token" {
  description = "List of validation_token values across all static_web_app_custom_domains"
  value       = [for k, v in module.static_web_app_custom_domains.static_web_app_custom_domains : v.validation_token]
  sensitive   = true
}
output "static_web_app_custom_domains_validation_type" {
  description = "List of validation_type values across all static_web_app_custom_domains"
  value       = [for k, v in module.static_web_app_custom_domains.static_web_app_custom_domains : v.validation_type]
}


# --- azurerm_static_web_app_function_app_registration ---
output "static_web_app_function_app_registrations" {
  description = "All static_web_app_function_app_registration resources"
  value       = module.static_web_app_function_app_registrations.static_web_app_function_app_registrations
}
output "static_web_app_function_app_registrations_function_app_id" {
  description = "List of function_app_id values across all static_web_app_function_app_registrations"
  value       = [for k, v in module.static_web_app_function_app_registrations.static_web_app_function_app_registrations : v.function_app_id]
}
output "static_web_app_function_app_registrations_static_web_app_id" {
  description = "List of static_web_app_id values across all static_web_app_function_app_registrations"
  value       = [for k, v in module.static_web_app_function_app_registrations.static_web_app_function_app_registrations : v.static_web_app_id]
}



