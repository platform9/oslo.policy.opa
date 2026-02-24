package identity_remove_endpoint_from_project_test

import data.identity.remove_endpoint_from_project

test_remove_endpoint_from_project_0 if remove_endpoint_from_project.allow with input as {"credentials": {"roles": ["admin"]}}
test_remove_endpoint_from_project_1 if remove_endpoint_from_project.allow with input as {"credentials": {"is_admin": 1}}
