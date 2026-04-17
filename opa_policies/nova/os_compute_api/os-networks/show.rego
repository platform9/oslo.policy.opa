package os_compute_api.os_networks.show

import data.nova_lib

# Show network details.
#
# This API is proxy calls to the Network service. This is deprecated.
# GET  /os-networks/{network_id}
# Intended scope(s): project
# "os_compute_api:os-networks:show": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
