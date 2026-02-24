package identity_delete_trust_test

import data.identity.delete_trust

test_admin_required_or_creds_user_id_eq_input_target_trust_trustor_user_id_0 if delete_trust.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_creds_user_id_eq_input_target_trust_trustor_user_id_1 if delete_trust.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_creds_user_id_eq_input_target_trust_trustor_user_id_2 if delete_trust.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"trust": {"trustor_user_id": "foo"}}}}
