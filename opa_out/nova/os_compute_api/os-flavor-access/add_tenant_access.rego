package os_compute_api.os_flavor_access.add_tenant_access

import data.lib

# Add flavor access to a tenant
# POST  /flavors/{flavor_id}/action (addTenantAccess)
# Intended scope(s): project
#"os_compute_api:os-flavor-access:add_tenant_access": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

