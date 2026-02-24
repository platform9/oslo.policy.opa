package volume_extension_volume_actions_terminate_connection_test

import data.volume_extension.volume_actions.terminate_connection

test_terminate_connection_0 if terminate_connection.allow with input as {"credentials": {"roles": ["admin"]}}
test_terminate_connection_1 if terminate_connection.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
