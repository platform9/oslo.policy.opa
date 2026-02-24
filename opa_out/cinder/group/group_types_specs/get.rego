package group.group_types_specs.get

import data.lib

# Show a group type spec.
# GET  /group_types/{group_type_id}/group_specs/{g_spec_id}
#"group:group_types_specs:get": "rule:admin_api"


allow if {
  lib.admin_api
}

