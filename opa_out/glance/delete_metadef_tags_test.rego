package delete_metadef_tags_test

import data.delete_metadef_tags

test_system_admin_0 if delete_metadef_tags.allow with input as {"credentials": {"project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "owner": "project-a", "member": "project-a", "domain_id": "domain-a"}}
