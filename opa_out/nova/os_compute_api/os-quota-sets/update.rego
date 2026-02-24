package os_compute_api.os_quota_sets.update

import data.lib

# Update the quotas
# PUT  /os-quota-sets/{tenant_id}
# Intended scope(s): project
#"os_compute_api:os-quota-sets:update": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

