package get_policy_minimum_bandwidth_rule

import data.neutron_lib

# Get a QoS minimum bandwidth rule
# GET  /qos/policies/{policy_id}/minimum_bandwidth_rules
# GET  /qos/policies/{policy_id}/minimum_bandwidth_rules/{rule_id}
# Intended scope(s): project
# Target attrs: direction, domain_id, id, min_kbps, tenant_id
# "get_policy_minimum_bandwidth_rule": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_tenant_id_
}

# (role:reader and tenant_id:%(ext_parent_policy:tenant_id)s)
reader_and_tenant_id_ if {
	"reader" in input.credentials.roles
	input.target["ext_parent:tenant_id"] == input.credentials.tenant_id
	neutron_lib.same_domain
}
