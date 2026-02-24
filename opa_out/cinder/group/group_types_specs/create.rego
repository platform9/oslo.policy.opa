package group.group_types_specs.create

import data.lib

# Create a group type spec.
# POST  /group_types/{group_type_id}/group_specs
#"group:group_types_specs:create": "rule:admin_api"


allow if {
  lib.admin_api
}

