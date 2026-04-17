package os_compute_api.os_services.update

import data.nova_lib

# Update a Compute service.
# PUT  /os-services/{service_id}
# Intended scope(s): project
# "os_compute_api:os-services:update": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
