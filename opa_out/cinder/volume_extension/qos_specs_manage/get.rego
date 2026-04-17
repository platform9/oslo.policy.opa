package volume_extension.qos_specs_manage.get

import data.cinder_lib

# Show qos specs.
# GET  /qos-specs/{qos_id}
# "volume_extension:qos_specs_manage:get": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
