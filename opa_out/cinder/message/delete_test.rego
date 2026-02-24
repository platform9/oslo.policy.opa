package message_delete_test

import data.message.delete

test_delete_0 if delete.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
