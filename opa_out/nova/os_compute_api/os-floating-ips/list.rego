package os_compute_api.os_floating_ips.list

import data.nova_lib

# List floating IPs. This API is deprecated.
# GET  /os-floating-ips
# Intended scope(s): project
# "os_compute_api:os-floating-ips:list": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
