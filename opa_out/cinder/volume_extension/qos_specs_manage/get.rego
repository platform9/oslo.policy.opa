package volume_extension.qos_specs_manage.get

import data.lib

# Show qos specs.
# GET  /qos-specs/{qos_id}
#"volume_extension:qos_specs_manage:get": "rule:admin_api"


allow if {
  lib.admin_api
}

