package limits_extension.used_limits

import data.cinder_lib

# Show limits with used limit attributes.
# GET  /limits
# "limits_extension:used_limits": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
