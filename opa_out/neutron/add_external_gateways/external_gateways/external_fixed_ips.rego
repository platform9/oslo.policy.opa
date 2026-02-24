package add_external_gateways.external_gateways.external_fixed_ips

import data.lib

# Add router external gateways specifying the fixed IPs
# PUT  /routers/{id}
# Intended scope(s): project
#"add_external_gateways:external_gateways:external_fixed_ips": "rule:admin_only"


allow if {
  lib.admin_only
}

