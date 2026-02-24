package get_router_conntrack_helper_test

import data.get_router_conntrack_helper

test_admin_only_or_reader_and_ext_parent_owner_0 if get_router_conntrack_helper.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_ext_parent_owner_1 if get_router_conntrack_helper.allow with input as {"credentials": {"roles": ["reader"]}}
