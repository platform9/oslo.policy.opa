package volume_extension.quota_classes.get

import data.cinder_lib

# Show project quota class.
# GET  /os-quota-class-sets/{project_id}
# "volume_extension:quota_classes:get": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
