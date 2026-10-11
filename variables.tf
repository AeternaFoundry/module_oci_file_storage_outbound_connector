variable "file_storage_outbound_connectors" {
  description = <<EOT
Map of file_storage_outbound_connectors, attributes below
Required:
    - availability_domain
    - bind_distinguished_name
    - compartment_id
    - connector_type
    - endpoints (block):
        - hostname (required)
        - port (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - is_lock_override
    - password_secret_id
    - password_secret_version
    - trusted_certificate_secret_id
    - trusted_certificate_secret_version
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain                = string
    bind_distinguished_name            = string
    compartment_id                     = string
    connector_type                     = string
    defined_tags                       = optional(map(string))
    display_name                       = optional(string)
    freeform_tags                      = optional(map(string))
    is_lock_override                   = optional(bool)
    password_secret_id                 = optional(string)
    password_secret_version            = optional(number)
    trusted_certificate_secret_id      = optional(string)
    trusted_certificate_secret_version = optional(number)
    endpoints = list(object({
      hostname = string
      port     = string
    }))
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.file_storage_outbound_connectors : (
        length(v.endpoints) >= 1
      )
    ])
    error_message = "Each endpoints list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.file_storage_outbound_connectors : (
        contains([for v in ["LDAPBIND"] : lower(v)], lower(v.connector_type))
      )
    ])
    error_message = "must be one of: \"LDAPBIND\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

