package os_compute_api.os_shelve.shelve

import data.nova_lib

# Shelve server
# POST  /servers/{server_id}/action (shelve)
# Intended scope(s): project
# "os_compute_api:os-shelve:shelve": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
