package identity.remove_endpoint_from_project

import data.keystone_lib

# Remove access to an endpoint from a project that has previously been
# given explicit access.
# DELETE  /v3/OS-EP-FILTER/projects/{project_id}/endpoints/{endpoint_id}
# Intended scope(s): system, project
# "identity:remove_endpoint_from_project": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
