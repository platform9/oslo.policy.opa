package update_external_gateways.external_gateways.external_fixed_ips

import data.lib

# Update router external gateways fixed IPs
# PUT  /routers/{id}
# Intended scope(s): project
#"update_external_gateways:external_gateways:external_fixed_ips": "rule:admin_only"


allow if {
  lib.admin_only
}

