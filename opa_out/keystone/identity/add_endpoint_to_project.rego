package identity.add_endpoint_to_project

import data.keystone_lib

# Allow project to access an endpoint.
# PUT  /v3/OS-EP-FILTER/projects/{project_id}/endpoints/{endpoint_id}
# Intended scope(s): system, project
# "identity:add_endpoint_to_project": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
