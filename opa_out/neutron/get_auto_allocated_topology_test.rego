package get_auto_allocated_topology_test

import data.get_auto_allocated_topology

test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_0 if get_auto_allocated_topology.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_1 if get_auto_allocated_topology.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
