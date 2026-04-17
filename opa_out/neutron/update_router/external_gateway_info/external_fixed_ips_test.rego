package update_router_external_gateway_info_external_fixed_ips_test

import data.update_router.external_gateway_info.external_fixed_ips

test_system_admin_0 if external_fixed_ips.allow with input as {"credentials": {"tenant_id": "sys-project-1", "project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"tenant_id": "project-a", "project_id": "project-a", "domain_id": "domain-a"}}
