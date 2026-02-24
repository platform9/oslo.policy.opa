package get_security_group_rule_test

import data.get_security_group_rule

test_admin_only_or_reader_and_sg_owner_0 if get_security_group_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_sg_owner_1 if get_security_group_rule.allow with input as {"credentials": {"roles": ["reader"], "tenant_id": "bar"}, "target": {"security_group_id": "foo"}} with data.lib.get_security_group as {"tenant_id": "bar"}
