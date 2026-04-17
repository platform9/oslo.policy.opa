package get_alias_minimum_bandwidth_rule

import data.neutron_lib

# Get a QoS minimum bandwidth rule through alias
# GET  /qos/alias_minimum_bandwidth_rules/{rule_id}/
# Intended scope(s): project
# Target attrs: direction, domain_id, id, min_kbps, tenant_id
# "get_alias_minimum_bandwidth_rule": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_ext_parent_owner
}

# (role:reader and rule:ext_parent_owner)
reader_and_ext_parent_owner if {
	"reader" in input.credentials.roles
	neutron_lib.ext_parent_owner
}
