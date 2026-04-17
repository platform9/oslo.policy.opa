package get_policy_dscp_marking_rule

import data.neutron_lib

# Get a QoS DSCP marking rule
# GET  /qos/policies/{policy_id}/dscp_marking_rules
# GET  /qos/policies/{policy_id}/dscp_marking_rules/{rule_id}
# Intended scope(s): project
# Target attrs: domain_id, dscp_mark, id, tenant_id
# "get_policy_dscp_marking_rule": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"

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
