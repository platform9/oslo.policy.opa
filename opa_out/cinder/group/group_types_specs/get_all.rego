package group.group_types_specs.get_all

import data.lib

# List group type specs.
# GET  /group_types/{group_type_id}/group_specs
#"group:group_types_specs:get_all": "rule:admin_api"


allow if {
  lib.admin_api
}

