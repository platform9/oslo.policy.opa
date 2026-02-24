package create_router.enable_dflt_route_ecmp

import data.lib

# Specify ``enable_default_route_ecmp`` attribute when creating a
# router
# POST  /routers
# Intended scope(s): project
#"create_router:enable_default_route_ecmp": "rule:admin_only"


allow if {
  lib.admin_only
}

