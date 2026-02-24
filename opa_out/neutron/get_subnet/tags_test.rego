package get_subnet_tags_test

import data.get_subnet.tags

test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_0 if tags.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_1 if tags.allow with input as {"target": {"network_id": "foo"}} with data.lib.get_network as {"shared": true}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_2 if tags.allow with input as {"target": {"router:external": true}}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_3 if tags.allow with input as {"credentials": {"roles": ["admin"]}}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_4 if tags.allow with input as {"credentials": {"roles": ["reader"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
