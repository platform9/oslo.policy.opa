package activate

import data.neutron_lib

# Activate port binding on the host
# PUT  /ports/{port_id}/bindings/{host}
# Intended scope(s): project
# "activate": "rule:service_api"

allow if {
	# role:admin
	"admin" in input.credentials.roles
	neutron_lib.same_domain
}

allow if {
	# role:service
	"service" in input.credentials.roles
}
