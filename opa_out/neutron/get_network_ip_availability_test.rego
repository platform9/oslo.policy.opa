package get_network_ip_availability_test

import data.get_network_ip_availability

test_admin_only_or_service_api_0 if get_network_ip_availability.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_1 if get_network_ip_availability.allow with input as {"credentials": {"roles": ["service"]}}
