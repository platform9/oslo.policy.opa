package get_port_binding_vif_type_test

import data.get_port.binding.vif_type

test_admin_only_or_service_api_0 if vif_type.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_1 if vif_type.allow with input as {"credentials": {"roles": ["service"]}}
