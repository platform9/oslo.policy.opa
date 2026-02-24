package update_port_binding_host_id_test

import data.update_port.binding.host_id

test_admin_only_or_service_api_0 if host_id.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_1 if host_id.allow with input as {"credentials": {"roles": ["service"]}}
