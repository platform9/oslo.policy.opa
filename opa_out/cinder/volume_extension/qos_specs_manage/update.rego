package volume_extension.qos_specs_manage.update

import data.lib

# Update qos specs (including updating association).
# PUT  /qos-specs/{qos_id}
# GET  /qos-specs/{qos_id}/disassociate_all
# GET  /qos-specs/{qos_id}/associate
# GET  /qos-specs/{qos_id}/disassociate
#"volume_extension:qos_specs_manage:update": "rule:admin_api"


allow if {
  lib.admin_api
}

