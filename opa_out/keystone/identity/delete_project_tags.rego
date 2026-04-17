package identity.delete_project_tags

import data.keystone_lib

# Remove all tags from a project.
# DELETE  /v3/projects/{project_id}/tags
# Intended scope(s): system, domain, project
# "identity:delete_project_tags": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
