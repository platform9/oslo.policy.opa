package os_compute_api_os_keypairs_create_test

import data.os_compute_api.os_keypairs.create

test_system_admin_0 if create.allow with input as {"credentials": {"project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
test_deny_cross_domain_admin_1 if not create.allow with input as {"credentials": {"project_id": "project-b", "user_id": "admin-user-b", "user_domain_id": "domain-b", "project_domain_id": "domain-b", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
test_deny_cross_project_member_2 if not create.allow with input as {"credentials": {"project_id": "project-b", "user_id": "member-user-b", "user_domain_id": "domain-a", "project_domain_id": "domain-a", "is_admin": false, "is_admin_project": false, "roles": ["member"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
test_deny_wrong_role_3 if not create.allow with input as {"credentials": {"project_id": "project-c", "user_id": "norole-user", "user_domain_id": "domain-a", "project_domain_id": "domain-a", "is_admin": false, "is_admin_project": false, "roles": [], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
