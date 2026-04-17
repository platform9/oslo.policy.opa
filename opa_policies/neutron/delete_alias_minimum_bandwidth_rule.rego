package delete_alias_minimum_bandwidth_rule

import data.neutron_lib

# Delete a QoS minimum bandwidth rule through alias
# DELETE  /qos/alias_minimum_bandwidth_rules/{rule_id}/
# Intended scope(s): project
# Target attrs: direction, domain_id, id, min_kbps, tenant_id
# "delete_alias_minimum_bandwidth_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"

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
