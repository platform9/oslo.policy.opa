package identity_create_consumer_test

import data.identity.create_consumer

test_create_consumer_0 if create_consumer.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_consumer_1 if create_consumer.allow with input as {"credentials": {"is_admin": 1}}
