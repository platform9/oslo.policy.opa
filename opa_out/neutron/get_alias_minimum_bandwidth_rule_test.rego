package get_alias_minimum_bandwidth_rule_test

import data.get_alias_minimum_bandwidth_rule

test_admin_only_or_reader_and_ext_parent_owner_0 if get_alias_minimum_bandwidth_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_ext_parent_owner_1 if get_alias_minimum_bandwidth_rule.allow with input as {"credentials": {"roles": ["reader"]}}
