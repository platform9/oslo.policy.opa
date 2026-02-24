package get_policy_minimum_packet_rate_rule_test

import data.get_policy_minimum_packet_rate_rule

test_admin_only_or_reader_and_tenant_id__0 if get_policy_minimum_packet_rate_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_tenant_id__1 if get_policy_minimum_packet_rate_rule.allow with input as {"credentials": {"roles": ["reader"], "tenant_id": "bar"}, "target": {"ext_parent_policy_id": "foo"}} with data.lib.get_policy as {"tenant_id": "bar"}
