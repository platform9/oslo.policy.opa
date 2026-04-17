package os_compute_api.os_hypervisors.list

import data.nova_lib

# List all hypervisors.
# GET  /os-hypervisors
# Intended scope(s): project
# "os_compute_api:os-hypervisors:list": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
