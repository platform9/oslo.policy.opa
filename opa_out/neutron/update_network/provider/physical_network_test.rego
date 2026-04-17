package update_network_provider_physical_network_test

import data.update_network.provider.physical_network

test_system_admin_0 if physical_network.allow with input as {"credentials": {"tenant_id": "sys-project-1", "project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"tenant_id": "project-a", "project_id": "project-a", "domain_id": "domain-a"}}
