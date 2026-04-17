package os_compute_api.os_security_groups.show

import data.nova_lib

# Show security group. This API is deprecated.
# GET  /os-security-groups/{security_group_id}
# Intended scope(s): project
# "os_compute_api:os-security-groups:show": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
