package identity_delete_consumer_test

import data.identity.delete_consumer

test_delete_consumer_0 if delete_consumer.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_consumer_1 if delete_consumer.allow with input as {"credentials": {"is_admin": 1}}
