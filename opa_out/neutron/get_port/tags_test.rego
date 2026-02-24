package get_port_tags_test

import data.get_port.tags

test_context_is_advsvc_or_admin_only_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_0 if tags.allow with input as {"credentials": {"roles": ["advsvc"]}}
test_context_is_advsvc_or_admin_only_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_1 if tags.allow with input as {"credentials": {"roles": ["admin"]}}
test_context_is_advsvc_or_admin_only_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_2 if tags.allow with input as {"credentials": {"roles": ["reader"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
test_context_is_advsvc_or_admin_only_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_3 if tags.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
