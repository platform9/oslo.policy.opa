package os_compute_api.os_simple_tenant_usage.list

import data.lib

# List per tenant usage statistics for all tenants
# GET  /os-simple-tenant-usage
# Intended scope(s): project
#"os_compute_api:os-simple-tenant-usage:list": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

