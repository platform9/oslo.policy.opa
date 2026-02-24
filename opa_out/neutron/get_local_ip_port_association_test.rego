package get_local_ip_port_association_test

import data.get_local_ip_port_association

test_admin_only_or_reader_and_ext_parent_owner_0 if get_local_ip_port_association.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_ext_parent_owner_1 if get_local_ip_port_association.allow with input as {"credentials": {"roles": ["reader"]}}
