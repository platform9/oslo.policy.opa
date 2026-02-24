package delete_policy_packet_rate_limit_rule

import data.lib

# Delete a QoS packet rate limit rule
# DELETE  /qos/policies/{policy_id}/packet_rate_limit_rules/{rule_id}
# Intended scope(s): project
#"delete_policy_packet_rate_limit_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


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

