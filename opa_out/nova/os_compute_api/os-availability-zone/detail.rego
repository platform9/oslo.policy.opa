package os_compute_api.os_availability_zone.detail

import data.nova_lib

# List detailed availability zone information with host information
# GET  /os-availability-zone/detail
# Intended scope(s): project
# "os_compute_api:os-availability-zone:detail": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
