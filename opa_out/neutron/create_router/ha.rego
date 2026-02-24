package create_router.ha

import data.lib

# Specify ``ha`` attribute when creating a router
# POST  /routers
# Intended scope(s): project
#"create_router:ha": "rule:admin_only"


allow if {
  lib.admin_only
}

