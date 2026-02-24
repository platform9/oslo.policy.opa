package update_router.enable_dflt_route_bfd

import data.lib

# Specify ``enable_default_route_bfd`` attribute when updating a
# router
# POST  /routers
# Intended scope(s): project
#"update_router:enable_default_route_bfd": "rule:admin_only"


allow if {
  lib.admin_only
}

