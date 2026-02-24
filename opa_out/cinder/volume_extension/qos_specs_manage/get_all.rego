package volume_extension.qos_specs_manage.get_all

import data.lib

# List qos specs or list all associations.
# GET  /qos-specs
# GET  /qos-specs/{qos_id}/associations
#"volume_extension:qos_specs_manage:get_all": "rule:admin_api"


allow if {
  lib.admin_api
}

