package identity_remove_user_from_group_test

import data.identity.remove_user_from_group

test_admin_required_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id_0 if remove_user_from_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id_1 if remove_user_from_group.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id_2 if remove_user_from_group.allow with input as {"credentials": {"roles": ["manager"], "domain_id": "foo"}, "target": {"target": {"group": {"domain_id": "foo"}, "user": {"domain_id": "foo"}}}}
