package delete_policy_minimum_packet_rate_rule

import data.lib

# Delete a QoS minimum packet rate rule
# DELETE  /qos/policies/{policy_id}/minimum_packet_rate_rules/{rule_id}
# Intended scope(s): project
#"delete_policy_minimum_packet_rate_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


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

