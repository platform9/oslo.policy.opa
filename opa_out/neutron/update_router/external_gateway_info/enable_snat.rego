package update_router.external_gateway_info.enable_snat

import data.lib

# Update ``enable_snat`` attribute of ``external_gateway_info``
# information of a router
# PUT  /routers/{id}
# Intended scope(s): project
#"update_router:external_gateway_info:enable_snat": "rule:admin_only"


allow if {
  lib.admin_only
}

