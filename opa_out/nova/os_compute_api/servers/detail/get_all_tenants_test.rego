package os_compute_api_servers_detail_get_all_tenants_test

import data.os_compute_api.servers.detail.get_all_tenants

test_system_admin_0 if get_all_tenants.allow with input as {"credentials": {"project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
