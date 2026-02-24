package identity_add_endpoint_to_project_test

import data.identity.add_endpoint_to_project

test_add_endpoint_to_project_0 if add_endpoint_to_project.allow with input as {"credentials": {"roles": ["admin"]}}
test_add_endpoint_to_project_1 if add_endpoint_to_project.allow with input as {"credentials": {"is_admin": 1}}
