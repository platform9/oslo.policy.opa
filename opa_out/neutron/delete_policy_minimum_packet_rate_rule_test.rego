package delete_policy_minimum_packet_rate_rule_test

import data.delete_policy_minimum_packet_rate_rule

test_admin_only_or_manager_and_tenant_id__0 if delete_policy_minimum_packet_rate_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_manager_and_tenant_id__1 if delete_policy_minimum_packet_rate_rule.allow with input as {"credentials": {"roles": ["manager"], "tenant_id": "bar"}, "target": {"ext_parent_policy_id": "foo"}} with data.lib.get_policy as {"tenant_id": "bar"}
