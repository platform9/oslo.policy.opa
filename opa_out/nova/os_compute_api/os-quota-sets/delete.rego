package os_compute_api.os_quota_sets.delete

import data.lib

# Revert quotas to defaults
# DELETE  /os-quota-sets/{tenant_id}
# Intended scope(s): project
#"os_compute_api:os-quota-sets:delete": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

