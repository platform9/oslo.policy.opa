package os_compute_api.os_quota_sets.delete

import data.nova_lib

# Revert quotas to defaults
# DELETE  /os-quota-sets/{tenant_id}
# Intended scope(s): project
# "os_compute_api:os-quota-sets:delete": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
