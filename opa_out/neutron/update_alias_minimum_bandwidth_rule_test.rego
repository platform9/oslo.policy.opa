package update_alias_minimum_bandwidth_rule_test

import data.update_alias_minimum_bandwidth_rule

test_admin_only_or_manager_and_ext_parent_owner_0 if update_alias_minimum_bandwidth_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_manager_and_ext_parent_owner_1 if update_alias_minimum_bandwidth_rule.allow with input as {"credentials": {"roles": ["manager"]}}
