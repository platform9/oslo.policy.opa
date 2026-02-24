package volume_update_readonly_flag_test

import data.volume.update_readonly_flag

test_update_readonly_flag_0 if update_readonly_flag.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_readonly_flag_1 if update_readonly_flag.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
