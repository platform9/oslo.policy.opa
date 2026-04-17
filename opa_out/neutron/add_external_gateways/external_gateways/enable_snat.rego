package add_external_gateways.external_gateways.enable_snat

import data.neutron_lib

# Add router external gateways specifying SNAT flag
# PUT  /routers/{id}
# Intended scope(s): project
# "add_external_gateways:external_gateways:enable_snat": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
