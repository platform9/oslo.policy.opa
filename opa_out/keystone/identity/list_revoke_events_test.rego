package identity_list_revoke_events_test

import data.identity.list_revoke_events

test_list_revoke_events_0 if list_revoke_events.allow with input as {"credentials": {"roles": ["admin"]}}
test_list_revoke_events_1 if list_revoke_events.allow with input as {"credentials": {"is_admin": 1}}
test_list_revoke_events_2 if list_revoke_events.allow with input as {"credentials": {"roles": ["service"]}}
