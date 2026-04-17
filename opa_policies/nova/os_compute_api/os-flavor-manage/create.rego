package os_compute_api.os_flavor_manage.create

import data.nova_lib

# Create a flavor
# POST  /flavors
# Intended scope(s): project
# "os_compute_api:os-flavor-manage:create": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
