package get_router.ha

import data.lib

# Get ``ha`` attribute of a router
# GET  /routers
# GET  /routers/{id}
# Intended scope(s): project
#"get_router:ha": "rule:admin_only"


allow if {
  lib.admin_only
}

