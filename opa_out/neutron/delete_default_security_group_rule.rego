package delete_dflt_security_group_rule

import data.neutron_lib

# Delete a templated of the security group rule
# DELETE  /default-security-group-rules/{id}
# Intended scope(s): project
# "delete_default_security_group_rule": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
