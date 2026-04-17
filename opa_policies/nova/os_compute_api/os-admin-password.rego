package os_compute_api.os_admin_password

import data.nova_lib

# Change the administrative password for a server
# POST  /servers/{server_id}/action (changePassword)
# Intended scope(s): project
# "os_compute_api:os-admin-password": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
