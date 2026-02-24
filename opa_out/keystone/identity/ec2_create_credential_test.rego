package identity_ec2_create_credential_test

import data.identity.ec2_create_credential

test_ec2_create_credential_0 if ec2_create_credential.allow with input as {"credentials": {"roles": ["admin"]}}
test_ec2_create_credential_1 if ec2_create_credential.allow with input as {"credentials": {"is_admin": 1}}
test_ec2_create_credential_2 if ec2_create_credential.allow with input as {"credentials": {"user_id": "foo"}, "target": {"user_id": "foo"}}
