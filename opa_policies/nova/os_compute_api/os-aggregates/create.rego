package os_compute_api.os_aggregates.create

import data.nova_lib

# Create an aggregate
# POST  /os-aggregates
# Intended scope(s): project
# "os_compute_api:os-aggregates:create": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
