package os_compute_api.os_security_groups.rule.create

import data.nova_lib

# Create security group Rule. This API is deprecated.
# POST  /os-security-group-rules
# Intended scope(s): project
# "os_compute_api:os-security-groups:rule:create": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
