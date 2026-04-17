package os_compute_api.os_aggregates.update

import data.nova_lib

# Update name and/or availability zone for an aggregate
# PUT  /os-aggregates/{aggregate_id}
# Intended scope(s): project
# "os_compute_api:os-aggregates:update": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
