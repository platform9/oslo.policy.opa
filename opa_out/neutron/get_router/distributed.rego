package get_router.distributed

import data.lib

# Get ``distributed`` attribute of a router
# GET  /routers
# GET  /routers/{id}
# Intended scope(s): project
#"get_router:distributed": "rule:admin_only"


allow if {
  lib.admin_only
}

