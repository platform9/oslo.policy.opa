package identity.remove_endpoint_group_from_project

import data.lib

# Remove endpoint group from project.
# DELETE  /v3/OS-EP-FILTER/endpoint_groups/{endpoint_group_id}/projects/{project_id}
# Intended scope(s): system, project
#"identity:remove_endpoint_group_from_project": "rule:admin_required"


allow if {
  lib.admin_required
}

