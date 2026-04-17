package os_compute_api.os_attach_interfaces.list

import data.nova_lib

# List port interfaces attached to a server
# GET  /servers/{server_id}/os-interface
# Intended scope(s): project
# "os_compute_api:os-attach-interfaces:list": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
