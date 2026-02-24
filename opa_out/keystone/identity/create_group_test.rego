package identity_create_group_test

import data.identity.create_group

test_admin_required_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_0 if create_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_1 if create_group.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_2 if create_group.allow with input as {"credentials": {"roles": ["manager"], "domain_id": "foo"}, "target": {"target": {"group": {"domain_id": "foo"}}}}
