package identity_delete_user_test

import data.identity.delete_user

test_admin_required_or_manager_and_creds_token_domain_id_eq_input_target_user_domain_id_0 if delete_user.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_manager_and_creds_token_domain_id_eq_input_target_user_domain_id_1 if delete_user.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_manager_and_creds_token_domain_id_eq_input_target_user_domain_id_2 if delete_user.allow with input as {"credentials": {"roles": ["manager"], "token": {"domain": {"id": "foo"}}}, "target": {"target": {"user": {"domain_id": "foo"}}}}
