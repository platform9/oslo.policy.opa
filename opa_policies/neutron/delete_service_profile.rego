package delete_service_profile

import data.neutron_lib

# Delete a service profile
# DELETE  /service_profiles/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, driver, enabled, id, metainfo
# "delete_service_profile": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
