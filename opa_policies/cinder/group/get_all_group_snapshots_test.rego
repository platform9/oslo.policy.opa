package group_get_all_group_snapshots_test

import data.group.get_all_group_snapshots

test_system_admin_0 if get_all_group_snapshots.allow with input as {"credentials": {"project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
test_project_reader_1 if get_all_group_snapshots.allow with input as {"credentials": {"project_id": "project-a", "user_id": "reader-user-1", "user_domain_id": "domain-a", "project_domain_id": "domain-a", "is_admin": false, "is_admin_project": false, "roles": ["reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
