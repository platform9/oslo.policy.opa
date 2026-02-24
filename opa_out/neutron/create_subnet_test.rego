package create_subnet_test

import data.create_subnet

test_admin_only_or_member_and_network_owner_0 if create_subnet.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_network_owner_1 if create_subnet.allow with input as {"credentials": {"roles": ["member"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
