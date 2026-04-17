package identity.add_endpoint_group_to_project

import data.keystone_lib

# Allow a project to access an endpoint group.
# PUT  /v3/OS-EP-FILTER/endpoint_groups/{endpoint_group_id}/projects/{project_id}
# Intended scope(s): system, project
# "identity:add_endpoint_group_to_project": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
