package update_external_gateways.external_gateways.enable_snat

import data.lib

# Update router external gateways SNAT flag
# PUT  /routers/{id}
# Intended scope(s): project
#"update_external_gateways:external_gateways:enable_snat": "rule:admin_only"


allow if {
  lib.admin_only
}

