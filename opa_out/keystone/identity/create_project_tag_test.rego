package identity_create_project_tag_test

import data.identity.create_project_tag

test_admin_required_or_manager_and_creds_domain_id_eq_input_target_project_domain_id_0 if create_project_tag.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_project_domain_id_1 if create_project_tag.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_manager_and_creds_domain_id_eq_input_target_project_domain_id_2 if create_project_tag.allow with input as {"credentials": {"roles": ["manager"], "domain_id": "foo"}, "target": {"target": {"project": {"domain_id": "foo"}}}}
