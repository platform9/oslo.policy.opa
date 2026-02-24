package get_router_conntrack_helper

import data.lib

# Get a router conntrack helper
# GET  /routers/{router_id}/conntrack_helpers
# GET  /routers/{router_id}/conntrack_helpers/{conntrack_helper_id}
# Intended scope(s): project
#"get_router_conntrack_helper": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_ext_parent_owner
}

#(role:reader and rule:ext_parent_owner)
reader_and_ext_parent_owner if {
  "reader" in input.credentials.roles
  lib.ext_parent_owner
}

