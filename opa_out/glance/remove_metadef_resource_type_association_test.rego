package remove_metadef_resource_type_association_test

import data.remove_metadef_resource_type_association

test_system_admin_0 if remove_metadef_resource_type_association.allow with input as {"credentials": {"project_id": "sys-project-1", "user_id": "sys-admin-user", "user_domain_id": "default", "project_domain_id": "default", "domain_id": "default", "system_scope": "all", "is_admin": true, "is_admin_project": true, "roles": ["admin", "member", "reader"], "service_roles": []}, "target": {"project_id": "project-a", "owner": "project-a", "member": "project-a", "domain_id": "domain-a"}}
