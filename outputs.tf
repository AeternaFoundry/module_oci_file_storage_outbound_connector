output "file_storage_outbound_connectors_id" {
  description = "Map of id values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no id are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "file_storage_outbound_connectors_availability_domain" {
  description = "Map of availability_domain values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no availability_domain are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "file_storage_outbound_connectors_bind_distinguished_name" {
  description = "Map of bind_distinguished_name values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no bind_distinguished_name are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.bind_distinguished_name if v.bind_distinguished_name != null && length(v.bind_distinguished_name) > 0 }
}
output "file_storage_outbound_connectors_compartment_id" {
  description = "Map of compartment_id values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no compartment_id are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "file_storage_outbound_connectors_connector_type" {
  description = "Map of connector_type values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no connector_type are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.connector_type if v.connector_type != null && length(v.connector_type) > 0 }
}
output "file_storage_outbound_connectors_defined_tags" {
  description = "Map of defined_tags values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no defined_tags are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "file_storage_outbound_connectors_display_name" {
  description = "Map of display_name values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no display_name are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "file_storage_outbound_connectors_endpoints" {
  description = "Map of endpoints values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no endpoints are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "file_storage_outbound_connectors_freeform_tags" {
  description = "Map of freeform_tags values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "file_storage_outbound_connectors_is_lock_override" {
  description = "Map of is_lock_override values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.is_lock_override if v.is_lock_override != null }
}
output "file_storage_outbound_connectors_locks" {
  description = "Map of locks values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no locks are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "file_storage_outbound_connectors_password_secret_id" {
  description = "Map of password_secret_id values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no password_secret_id are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.password_secret_id if v.password_secret_id != null && length(v.password_secret_id) > 0 }
}
output "file_storage_outbound_connectors_password_secret_version" {
  description = "Map of password_secret_version values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no password_secret_version are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.password_secret_version if v.password_secret_version != null }
}
output "file_storage_outbound_connectors_state" {
  description = "Map of state values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no state are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.state if v.state != null && length(v.state) > 0 }
}
output "file_storage_outbound_connectors_system_tags" {
  description = "Map of system_tags values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no system_tags are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "file_storage_outbound_connectors_time_created" {
  description = "Map of time_created values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no time_created are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "file_storage_outbound_connectors_trusted_certificate_secret_id" {
  description = "Map of trusted_certificate_secret_id values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no trusted_certificate_secret_id are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.trusted_certificate_secret_id if v.trusted_certificate_secret_id != null && length(v.trusted_certificate_secret_id) > 0 }
}
output "file_storage_outbound_connectors_trusted_certificate_secret_version" {
  description = "Map of trusted_certificate_secret_version values across all file_storage_outbound_connectors, keyed the same as var.file_storage_outbound_connectors except keys with no trusted_certificate_secret_version are omitted"
  value       = { for k, v in oci_file_storage_outbound_connector.file_storage_outbound_connectors : k => v.trusted_certificate_secret_version if v.trusted_certificate_secret_version != null }
}

