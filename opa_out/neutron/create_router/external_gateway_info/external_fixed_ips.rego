package create_router.external_gateway_info.external_fixed_ips

import data.lib

# Specify ``external_fixed_ips`` in ``external_gateway_info``
# information when creating a router
# POST  /routers
# Intended scope(s): project
#"create_router:external_gateway_info:external_fixed_ips": "rule:admin_only"


allow if {
  lib.admin_only
}

