package delete_flavor_service_profile

import data.neutron_lib

# Disassociate a flavor with a service profile
# DELETE  /flavors/{flavor_id}/service_profiles/{profile_id}
# Intended scope(s): project
# "delete_flavor_service_profile": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
