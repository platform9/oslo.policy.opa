package os_compute_api.os_services.list

import data.nova_lib

# List all running Compute services in a region.
# GET  /os-services
# Intended scope(s): project
# "os_compute_api:os-services:list": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
