package os_compute_api.os_instance_actions.list

import data.nova_lib

# List actions for a server.
# GET  /servers/{server_id}/os-instance-actions
# Intended scope(s): project
# "os_compute_api:os-instance-actions:list": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
