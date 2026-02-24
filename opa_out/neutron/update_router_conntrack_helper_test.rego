package update_router_conntrack_helper_test

import data.update_router_conntrack_helper

test_admin_only_or_member_and_ext_parent_owner_0 if update_router_conntrack_helper.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_ext_parent_owner_1 if update_router_conntrack_helper.allow with input as {"credentials": {"roles": ["member"]}}
