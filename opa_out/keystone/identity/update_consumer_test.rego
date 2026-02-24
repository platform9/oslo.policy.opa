package identity_update_consumer_test

import data.identity.update_consumer

test_update_consumer_0 if update_consumer.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_consumer_1 if update_consumer.allow with input as {"credentials": {"is_admin": 1}}
