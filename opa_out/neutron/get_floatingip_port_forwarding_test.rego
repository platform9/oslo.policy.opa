package get_floatingip_port_forwarding_test

import data.get_floatingip_port_forwarding

test_admin_only_or_reader_and_tenant_id__0 if get_floatingip_port_forwarding.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_tenant_id__1 if get_floatingip_port_forwarding.allow with input as {"credentials": {"roles": ["reader"], "tenant_id": "bar"}, "target": {"ext_parent_floatingip_id": "foo"}} with data.lib.get_floatingip as {"tenant_id": "bar"}
