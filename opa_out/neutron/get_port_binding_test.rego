package get_port_binding_test

import data.get_port_binding

test_admin_only_or_service_api_0 if get_port_binding.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_1 if get_port_binding.allow with input as {"credentials": {"roles": ["service"]}}
