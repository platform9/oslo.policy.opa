package os_compute_api_os_server_shares_index_test

import data.os_compute_api.os_server_shares.index

test_project_reader_0 if index.allow with input as {"credentials": {"project_id": "project-a", "user_id": "reader-user-1", "user_domain_id": "domain-a", "project_domain_id": "domain-a", "is_admin": false, "is_admin_project": false, "roles": ["reader"], "service_roles": []}, "target": {"project_id": "project-a", "domain_id": "domain-a"}}
