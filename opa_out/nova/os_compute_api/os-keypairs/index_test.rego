package os_compute_api_os_keypairs_index_test

import data.os_compute_api.os_keypairs.index

test_context_is_admin_or_creds_user_id_eq_input_user_id_0 if index.allow with input as {"credentials": {"roles": ["admin"]}}
test_context_is_admin_or_creds_user_id_eq_input_user_id_1 if index.allow with input as {"credentials": {"user_id": "foo"}, "target": {"user_id": "foo"}}
