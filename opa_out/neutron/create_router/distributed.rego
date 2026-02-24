package create_router.distributed

import data.lib

# Specify ``distributed`` attribute when creating a router
# POST  /routers
# Intended scope(s): project
#"create_router:distributed": "rule:admin_only"


allow if {
  lib.admin_only
}

