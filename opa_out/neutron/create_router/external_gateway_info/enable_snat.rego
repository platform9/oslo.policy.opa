package create_router.external_gateway_info.enable_snat

import data.lib

# Specify ``enable_snat`` in ``external_gateway_info`` information
# when creating a router
# POST  /routers
# Intended scope(s): project
#"create_router:external_gateway_info:enable_snat": "rule:admin_only"


allow if {
  lib.admin_only
}

