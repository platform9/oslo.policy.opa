package update_policy_dscp_marking_rule

import data.lib

# Update a QoS DSCP marking rule
# PUT  /qos/policies/{policy_id}/dscp_marking_rules/{rule_id}
# Intended scope(s): project
#"update_policy_dscp_marking_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  manager_and_tenant_id_
}

#(role:manager and tenant_id:%(ext_parent_policy:tenant_id)s)
manager_and_tenant_id_ if {
  "manager" in input.credentials.roles
  lib.get_policy(input.target.ext_parent_policy_id).tenant_id == input.credentials.tenant_id
}

