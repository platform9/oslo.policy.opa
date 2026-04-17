package identity.delete_project_tag

import data.keystone_lib

# Delete a specified tag from project.
# DELETE  /v3/projects/{project_id}/tags/{value}
# Intended scope(s): system, domain, project
# "identity:delete_project_tag": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
