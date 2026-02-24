package volume_extension.types_extra_specs.delete

import data.lib

# Delete type extra specs.
# DELETE  /types/{type_id}/extra_specs/{extra_spec_key}
#"volume_extension:types_extra_specs:delete": "rule:admin_api"


allow if {
  lib.admin_api
}

