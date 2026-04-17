package volume_extension.qos_specs_manage.create

import data.cinder_lib

# Create qos specs.
# POST  /qos-specs
# "volume_extension:qos_specs_manage:create": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
