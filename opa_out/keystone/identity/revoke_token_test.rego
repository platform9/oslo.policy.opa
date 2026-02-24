package identity_revoke_token_test

import data.identity.revoke_token

test_admin_required_or_token_subject_0 if revoke_token.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_token_subject_1 if revoke_token.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_token_subject_2 if revoke_token.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"token": {"user_id": "foo"}}}}
