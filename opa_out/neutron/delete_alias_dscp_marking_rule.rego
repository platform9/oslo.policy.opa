package delete_alias_dscp_marking_rule

import data.neutron_lib

# Delete a QoS DSCP marking rule through alias
# DELETE  /qos/alias_dscp_marking_rules/{rule_id}/
# Intended scope(s): project
# Target attrs: domain_id, dscp_mark, id, tenant_id
# "delete_alias_dscp_marking_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	manager_and_ext_parent_owner
}

# (role:manager and rule:ext_parent_owner)
manager_and_ext_parent_owner if {
	"manager" in input.credentials.roles
	neutron_lib.ext_parent_owner
}
