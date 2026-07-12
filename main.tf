locals {
  static_web_apps = { for k1, v1 in var.static_web_apps : k1 => { app_settings = v1.app_settings, basic_auth = v1.basic_auth, configuration_file_changes_enabled = v1.configuration_file_changes_enabled, identity = v1.identity, location = v1.location, name = v1.name, preview_environments_enabled = v1.preview_environments_enabled, public_network_access_enabled = v1.public_network_access_enabled, repository_branch = v1.repository_branch, repository_token = v1.repository_token, repository_token_key_vault_id = v1.repository_token_key_vault_id, repository_token_key_vault_secret_name = v1.repository_token_key_vault_secret_name, repository_url = v1.repository_url, resource_group_name = v1.resource_group_name, sku_size = v1.sku_size, sku_tier = v1.sku_tier, tags = v1.tags } }

  static_web_app_custom_domains = merge([
    for k1, v1 in var.static_web_apps : {
      for k2, v2 in coalesce(v1.static_web_app_custom_domains, {}) :
      "${k1}/${k2}" => merge(v2, {
        static_web_app_id = module.static_web_apps.static_web_apps_id["${k1}"]
      })
    }
  ]...)

  static_web_app_function_app_registrations = merge([
    for k1, v1 in var.static_web_apps : {
      for k2, v2 in coalesce(v1.static_web_app_function_app_registrations, {}) :
      "${k1}/${k2}" => merge(v2, {
        static_web_app_id = module.static_web_apps.static_web_apps_id["${k1}"]
      })
    }
  ]...)
}

module "static_web_apps" {
  source          = "git::https://github.com/AeternaModules/azurerm_static_web_app.git?ref=v4.80.0"
  static_web_apps = local.static_web_apps
}

module "static_web_app_custom_domains" {
  source                        = "git::https://github.com/AeternaModules/azurerm_static_web_app_custom_domain.git?ref=v4.80.0"
  static_web_app_custom_domains = local.static_web_app_custom_domains
  depends_on                    = [module.static_web_apps]
}

module "static_web_app_function_app_registrations" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_static_web_app_function_app_registration.git?ref=v4.80.0"
  static_web_app_function_app_registrations = local.static_web_app_function_app_registrations
  depends_on                                = [module.static_web_apps]
}

