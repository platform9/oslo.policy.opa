package os_compute_api_os_create_backup_test

import data.os_compute_api.os_create_backup

test_os_create_backup_0 if os_create_backup.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_os_create_backup_1 if os_create_backup.allow with input as {"credentials": {"roles": ["admin"]}}
