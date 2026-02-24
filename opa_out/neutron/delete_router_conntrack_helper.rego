package delete_router_conntrack_helper

import data.lib

# Delete a router conntrack helper
# DELETE  /routers/{router_id}/conntrack_helpers/{conntrack_helper_id}
# Intended scope(s): project
#"delete_router_conntrack_helper": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_ext_parent_owner
}

#(role:member and rule:ext_parent_owner)
member_and_ext_parent_owner if {
  "member" in input.credentials.roles
  lib.ext_parent_owner
}

