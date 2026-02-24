package os_compute_api_os_attach_interfaces_show_test

import data.os_compute_api.os_attach_interfaces.show

test_show_0 if show.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_show_1 if show.allow with input as {"credentials": {"roles": ["admin"]}}
