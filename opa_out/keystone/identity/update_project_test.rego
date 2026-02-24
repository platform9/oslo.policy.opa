package identity_update_project_test

import data.identity.update_project

test_admin_required_or_manager_and_creds_domain_id_eq_input_target_project_domain_id_0 if update_project.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_project_domain_id_1 if update_project.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_project_domain_id_2 if update_project.allow with input as {"credentials": {"roles": ["manager"], "domain_id": "foo"}, "target": {"target": {"project": {"domain_id": "foo"}}}}
