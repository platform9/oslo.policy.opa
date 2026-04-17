package os_compute_api.os_hypervisors.statistics

import data.nova_lib

# Show summary statistics for all hypervisors over all compute nodes.
# GET  /os-hypervisors/statistics
# Intended scope(s): project
# "os_compute_api:os-hypervisors:statistics": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
