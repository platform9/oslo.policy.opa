package update_router.external_gateway_info.external_fixed_ips

import data.lib

# Update ``external_fixed_ips`` attribute of ``external_gateway_info``
# information of a router
# PUT  /routers/{id}
# Intended scope(s): project
#"update_router:external_gateway_info:external_fixed_ips": "rule:admin_only"


allow if {
  lib.admin_only
}

