package group.group_types_specs.update

import data.lib

# Update a group type spec.
# PUT  /group_types/{group_type_id}/group_specs/{g_spec_id}
#"group:group_types_specs:update": "rule:admin_api"


allow if {
  lib.admin_api
}

