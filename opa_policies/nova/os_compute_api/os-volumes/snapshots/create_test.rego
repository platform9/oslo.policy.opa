package os_compute_api_os_volumes_snapshots_create_test

import data.os_compute_api.os_volumes.snapshots.create

test_project_member_0 if create.allow with input as {"credentials": {"project_id": "project-a", "user_id": "member-user-1", "user_domain_id": "domain-a", "project_domain_id": "domain-a", "is_admin": false, "is_admin_project": false, "roles": ["member"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
test_system_admin_1 if create.allow with input as {"credentials": {"project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
