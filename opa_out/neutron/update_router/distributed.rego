package update_router.distributed

import data.lib

# Update ``distributed`` attribute of a router
# PUT  /routers/{id}
# Intended scope(s): project
#"update_router:distributed": "rule:admin_only"


allow if {
  lib.admin_only
}

