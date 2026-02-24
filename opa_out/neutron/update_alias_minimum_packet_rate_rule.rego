package update_alias_minimum_packet_rate_rule

import data.lib

# Update a QoS minimum packet rate rule through alias
# PUT  /qos/alias_minimum_packet_rate_rules/{rule_id}/
# Intended scope(s): project
#"update_alias_minimum_packet_rate_rule": "rule:update_policy_minimum_packet_rate_rule"


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

