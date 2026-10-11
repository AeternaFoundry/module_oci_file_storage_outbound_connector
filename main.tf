resource "oci_file_storage_outbound_connector" "file_storage_outbound_connectors" {
  for_each = var.file_storage_outbound_connectors

  availability_domain                = each.value.availability_domain
  bind_distinguished_name            = each.value.bind_distinguished_name
  compartment_id                     = each.value.compartment_id
  connector_type                     = each.value.connector_type
  defined_tags                       = each.value.defined_tags
  display_name                       = each.value.display_name
  freeform_tags                      = each.value.freeform_tags
  is_lock_override                   = each.value.is_lock_override
  password_secret_id                 = each.value.password_secret_id
  password_secret_version            = each.value.password_secret_version
  trusted_certificate_secret_id      = each.value.trusted_certificate_secret_id
  trusted_certificate_secret_version = each.value.trusted_certificate_secret_version

  dynamic "endpoints" {
    for_each = each.value.endpoints
    content {
      hostname = endpoints.value.hostname
      port     = endpoints.value.port
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

