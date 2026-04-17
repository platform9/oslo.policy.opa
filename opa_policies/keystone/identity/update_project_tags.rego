package identity.update_project_tags

import data.keystone_lib

# Replace all tags on a project with the new set of tags.
# PUT  /v3/projects/{project_id}/tags
# Intended scope(s): system, domain, project
# "identity:update_project_tags": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
