package group.group_types_specs.delete

import data.lib

# Delete a group type spec.
# DELETE  /group_types/{group_type_id}/group_specs/{g_spec_id}
#"group:group_types_specs:delete": "rule:admin_api"


allow if {
  lib.admin_api
}

