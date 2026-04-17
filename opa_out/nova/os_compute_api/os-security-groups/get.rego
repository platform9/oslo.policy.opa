package os_compute_api.os_security_groups.get

import data.nova_lib

# List security groups. This API is deprecated.
# GET  /os-security-groups
# Intended scope(s): project
# "os_compute_api:os-security-groups:get": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
