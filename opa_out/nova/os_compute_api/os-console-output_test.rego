package os_compute_api_os_console_output_test

import data.os_compute_api.os_console_output

test_os_console_output_0 if os_console_output.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_os_console_output_1 if os_console_output.allow with input as {"credentials": {"roles": ["admin"]}}
