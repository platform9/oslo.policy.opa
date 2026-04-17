package volume_reimage_reserved_test

import data.volume.reimage_reserved

test_system_admin_0 if reimage_reserved.allow with input as {"credentials": {"project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
test_project_member_1 if reimage_reserved.allow with input as {"credentials": {"project_id": "project-a", "user_id": "member-user-1", "user_domain_id": "domain-a", "project_domain_id": "domain-a", "is_admin": false, "is_admin_project": false, "roles": ["member"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
