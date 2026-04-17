package update_external_gateways.external_gateways.external_fixed_ips

import data.neutron_lib

# Update router external gateways fixed IPs
# PUT  /routers/{id}
# Intended scope(s): project
# "update_external_gateways:external_gateways:external_fixed_ips": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
