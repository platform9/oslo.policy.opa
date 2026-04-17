package os_compute_api.os_flavor_manage.update

import data.nova_lib

# Update a flavor
# PUT  /flavors/{flavor_id}
# Intended scope(s): project
# "os_compute_api:os-flavor-manage:update": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
