package volume_extension.dflt_unset

import data.cinder_lib

# Unset default type.
# DELETE  /default-types/{project-id}
# "volume_extension:default_unset": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
