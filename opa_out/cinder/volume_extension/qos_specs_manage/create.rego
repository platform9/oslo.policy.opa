package volume_extension.qos_specs_manage.create

import data.lib

# Create qos specs.
# POST  /qos-specs
#"volume_extension:qos_specs_manage:create": "rule:admin_api"


allow if {
  lib.admin_api
}

