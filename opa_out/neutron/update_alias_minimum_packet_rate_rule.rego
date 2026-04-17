package update_alias_minimum_packet_rate_rule

import data.neutron_lib

# Update a QoS minimum packet rate rule through alias
# PUT  /qos/alias_minimum_packet_rate_rules/{rule_id}/
# Intended scope(s): project
# Target attrs: direction, domain_id, id, min_kpps
# "update_alias_minimum_packet_rate_rule": "rule:update_policy_minimum_packet_rate_rule"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	manager_and_tenant_id_
}

# (role:manager and tenant_id:%(ext_parent_policy:tenant_id)s)
manager_and_tenant_id_ if {
	"manager" in input.credentials.roles
	input.target["ext_parent:tenant_id"] == input.credentials.tenant_id
	neutron_lib.same_domain
}
