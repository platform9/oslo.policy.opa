package volume_extension.types_extra_specs.create

import data.lib

# Create type extra specs.
# POST  /types/{type_id}/extra_specs
#"volume_extension:types_extra_specs:create": "rule:admin_api"


allow if {
  lib.admin_api
}

