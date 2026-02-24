package delete_alias_bandwidth_limit_rule_test

import data.delete_alias_bandwidth_limit_rule

test_admin_only_or_manager_and_ext_parent_owner_0 if delete_alias_bandwidth_limit_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_manager_and_ext_parent_owner_1 if delete_alias_bandwidth_limit_rule.allow with input as {"credentials": {"roles": ["manager"]}}
