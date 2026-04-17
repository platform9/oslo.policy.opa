package identity.create_project_tag

import data.keystone_lib

# Add a single tag to a project.
# PUT  /v3/projects/{project_id}/tags/{value}
# Intended scope(s): system, domain, project
# "identity:create_project_tag": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
