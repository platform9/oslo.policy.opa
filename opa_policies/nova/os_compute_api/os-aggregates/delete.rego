package os_compute_api.os_aggregates.delete

import data.nova_lib

# Delete an aggregate
# DELETE  /os-aggregates/{aggregate_id}
# Intended scope(s): project
# "os_compute_api:os-aggregates:delete": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
