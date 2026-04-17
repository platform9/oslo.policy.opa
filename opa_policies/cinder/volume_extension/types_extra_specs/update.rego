package volume_extension.types_extra_specs.update

import data.cinder_lib

# Update type extra specs.
# PUT  /types/{type_id}/extra_specs/{extra_spec_key}
# "volume_extension:types_extra_specs:update": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
