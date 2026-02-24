package update_router.ha

import data.lib

# Update ``ha`` attribute of a router
# PUT  /routers/{id}
# Intended scope(s): project
#"update_router:ha": "rule:admin_only"


allow if {
  lib.admin_only
}

