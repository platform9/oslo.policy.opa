package identity_create_protocol_test

import data.identity.create_protocol

test_create_protocol_0 if create_protocol.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_protocol_1 if create_protocol.allow with input as {"credentials": {"is_admin": 1}}
