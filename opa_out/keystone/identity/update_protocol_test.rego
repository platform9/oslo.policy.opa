package identity_update_protocol_test

import data.identity.update_protocol

test_update_protocol_0 if update_protocol.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_protocol_1 if update_protocol.allow with input as {"credentials": {"is_admin": 1}}
