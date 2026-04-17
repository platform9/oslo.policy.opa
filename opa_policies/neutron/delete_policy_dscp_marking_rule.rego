package delete_policy_dscp_marking_rule

import data.neutron_lib

# Delete a QoS DSCP marking rule
# DELETE  /qos/policies/{policy_id}/dscp_marking_rules/{rule_id}
# Intended scope(s): project
# Target attrs: domain_id, dscp_mark, id, tenant_id
# "delete_policy_dscp_marking_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"

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
