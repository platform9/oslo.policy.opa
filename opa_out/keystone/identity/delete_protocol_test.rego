package identity_delete_protocol_test

import data.identity.delete_protocol

test_delete_protocol_0 if delete_protocol.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_protocol_1 if delete_protocol.allow with input as {"credentials": {"is_admin": 1}}
