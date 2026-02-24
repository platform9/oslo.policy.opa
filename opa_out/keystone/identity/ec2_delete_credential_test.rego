package identity_ec2_delete_credential_test

import data.identity.ec2_delete_credential

test_admin_required_or_creds_user_id_eq_input_target_credential_user_id_0 if ec2_delete_credential.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_creds_user_id_eq_input_target_credential_user_id_1 if ec2_delete_credential.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_creds_user_id_eq_input_target_credential_user_id_2 if ec2_delete_credential.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"credential": {"user_id": "foo"}}}}
