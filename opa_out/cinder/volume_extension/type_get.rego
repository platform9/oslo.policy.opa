package volume_extension.type_get

import data.cinder_lib

# Get one specific volume type.
# GET  /types/{type_id}
# "volume_extension:type_get": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
