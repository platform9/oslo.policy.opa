package get_port_binding_vif_details_test

import data.get_port.binding.vif_details

test_admin_only_or_service_api_0 if vif_details.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_1 if vif_details.allow with input as {"credentials": {"roles": ["service"]}}
