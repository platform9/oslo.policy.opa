package delete_security_group_rule_test

import data.delete_security_group_rule

test_admin_only_or_member_and_sg_owner_0 if delete_security_group_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_sg_owner_1 if delete_security_group_rule.allow with input as {"credentials": {"roles": ["member"], "tenant_id": "bar"}, "target": {"security_group_id": "foo"}} with data.lib.get_security_group as {"tenant_id": "bar"}
