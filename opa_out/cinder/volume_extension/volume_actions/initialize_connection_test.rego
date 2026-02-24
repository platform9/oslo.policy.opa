package volume_extension_volume_actions_initialize_connection_test

import data.volume_extension.volume_actions.initialize_connection

test_initialize_connection_0 if initialize_connection.allow with input as {"credentials": {"roles": ["admin"]}}
test_initialize_connection_1 if initialize_connection.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
