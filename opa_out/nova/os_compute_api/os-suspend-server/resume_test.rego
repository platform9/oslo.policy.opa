package os_compute_api_os_suspend_server_resume_test

import data.os_compute_api.os_suspend_server.resume

test_resume_0 if resume.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_resume_1 if resume.allow with input as {"credentials": {"roles": ["admin"]}}
