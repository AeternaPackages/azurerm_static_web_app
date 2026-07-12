variable "static_web_apps" {
  description = <<EOT
Map of static_web_apps, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - app_settings
    - configuration_file_changes_enabled
    - preview_environments_enabled
    - public_network_access_enabled
    - repository_branch
    - repository_token
    - repository_token_key_vault_id (alternative to repository_token - read from Key Vault instead)
    - repository_token_key_vault_secret_name (alternative to repository_token - read from Key Vault instead)
    - repository_url
    - sku_size
    - sku_tier
    - tags
    - basic_auth (block)
    - identity (block)
Nested static_web_app_custom_domains (azurerm_static_web_app_custom_domain):
    Required:
        - domain_name
        - validation_type
Nested static_web_app_function_app_registrations (azurerm_static_web_app_function_app_registration):
    Required:
        - function_app_id
EOT

  type = map(object({
    location                               = string
    name                                   = string
    resource_group_name                    = string
    app_settings                           = optional(map(string))
    configuration_file_changes_enabled     = optional(bool) # Default: true
    preview_environments_enabled           = optional(bool) # Default: true
    public_network_access_enabled          = optional(bool) # Default: true
    repository_branch                      = optional(string)
    repository_token                       = optional(string)
    repository_token_key_vault_id          = optional(string)
    repository_token_key_vault_secret_name = optional(string)
    repository_url                         = optional(string)
    sku_size                               = optional(string) # Default: "Free"
    sku_tier                               = optional(string) # Default: "Free"
    tags                                   = optional(map(string))
    basic_auth = optional(object({
      environments = string
      password     = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    static_web_app_custom_domains = optional(map(object({
      domain_name     = string
      validation_type = string
    })))
    static_web_app_function_app_registrations = optional(map(object({
      function_app_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.static_web_apps) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.static_web_apps : [for kk in keys(coalesce(v0.static_web_app_custom_domains, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.static_web_apps : [for kk in keys(coalesce(v0.static_web_app_function_app_registrations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
