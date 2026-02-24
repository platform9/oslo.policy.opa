package identity_get_access_rule_test

import data.identity.get_access_rule

test_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_user_id_0 if get_access_rule.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_user_id_1 if get_access_rule.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"user": {"id": "foo"}}}}
