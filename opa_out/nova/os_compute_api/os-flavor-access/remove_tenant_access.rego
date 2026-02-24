package os_compute_api.os_flavor_access.remove_tenant_access

import data.lib

# Remove flavor access from a tenant
# POST  /flavors/{flavor_id}/action (removeTenantAccess)
# Intended scope(s): project
#"os_compute_api:os-flavor-access:remove_tenant_access": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

