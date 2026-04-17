package create_rbac_policy_target_project_test

import data.create_rbac_policy.target_project

test_system_admin_0 if target_project.allow with input as {"credentials": {"tenant_id": "sys-project-1", "project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"tenant_id": "project-a", "project_id": "project-a", "domain_id": "domain-a", "target_tenant": "project-a", "target_project": "project-a"}}
