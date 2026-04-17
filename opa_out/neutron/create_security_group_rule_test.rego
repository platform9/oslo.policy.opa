package create_security_group_rule_test

import data.create_security_group_rule

test_system_admin_0 if create_security_group_rule.allow with input as {"credentials": {"tenant_id": "sys-project-1", "project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"tenant_id": "project-a", "project_id": "project-a", "domain_id": "domain-a", "security_group_id": "sg-1", "security_group:tenant_id": "project-a"}}
test_project_member_1 if create_security_group_rule.allow with input as {"credentials": {"tenant_id": "project-a", "project_id": "project-a", "user_id": "member-user-1", "user_domain_id": "domain-a", "project_domain_id": "domain-a", "is_admin": false, "is_admin_project": false, "roles": ["member"], "service_roles": []}, "target": {"tenant_id": "project-a", "project_id": "project-a", "domain_id": "domain-a", "security_group_id": "sg-1", "security_group:tenant_id": "project-a"}}
