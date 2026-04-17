package identity_create_domain_test

import data.identity.create_domain

test_system_admin_0 if create_domain.allow with input as {"credentials": {"user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": 1, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": [], "token": {"domain": {"id": "default"}, "project": {"domain": {"id": "default"}}}}, "target": {"domain_id": "domain-a", "target.domain_id": "domain-a", "target.user.domain_id": "domain-a", "target.project.domain_id": "domain-a", "target.project.id": "project-a", "target.group.domain_id": "domain-a", "user": {"domain_id": "domain-a"}, "project": {"id": "project-a", "domain_id": "domain-a"}, "group": {"domain_id": "domain-a"}, "domain": {"id": "domain-a"}}}
