package create_local_ip_port_association_test

import data.create_local_ip_port_association

test_admin_only_or_member_and_ext_parent_owner_0 if create_local_ip_port_association.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_ext_parent_owner_1 if create_local_ip_port_association.allow with input as {"credentials": {"roles": ["member"]}}
