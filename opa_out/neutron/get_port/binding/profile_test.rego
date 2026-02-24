package get_port_binding_profile_test

import data.get_port.binding.profile

test_admin_only_or_service_api_0 if profile.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_1 if profile.allow with input as {"credentials": {"roles": ["service"]}}
