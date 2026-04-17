package get_port_binding_host_id_test

import data.get_port.binding.host_id

test_system_admin_0 if host_id.allow with input as {"credentials": {"tenant_id": "sys-project-1", "project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"tenant_id": "project-a", "project_id": "project-a", "domain_id": "domain-a", "network_id": "net-1", "network:tenant_id": "project-a", "networks:shared": false}}
test_service_user_1 if host_id.allow with input as {"credentials": {"tenant_id": "service-project", "project_id": "service-project", "user_id": "service-user", "user_domain_id": "default", "project_domain_id": "default", "is_admin": false, "is_admin_project": false, "roles": ["service"], "service_roles": []}, "target": {"tenant_id": "project-a", "project_id": "project-a", "domain_id": "domain-a", "network_id": "net-1", "network:tenant_id": "project-a", "networks:shared": false}}
