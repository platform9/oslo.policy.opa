package os_compute_api.os_quota_sets.show

import data.nova_lib

# Show a quota
# GET  /os-quota-sets/{tenant_id}
# Intended scope(s): project
# "os_compute_api:os-quota-sets:show": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
