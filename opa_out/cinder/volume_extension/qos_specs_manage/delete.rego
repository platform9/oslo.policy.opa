package volume_extension.qos_specs_manage.delete

import data.cinder_lib

# delete qos specs or unset one specified qos key.
# DELETE  /qos-specs/{qos_id}
# PUT  /qos-specs/{qos_id}/delete_keys
# "volume_extension:qos_specs_manage:delete": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
