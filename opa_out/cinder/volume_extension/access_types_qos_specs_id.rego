package volume_extension.access_types_qos_specs_id

import data.lib

# Include the volume type's QoS specifications ID attribute in the
# volume type list or show requests.  The ability to make these calls
# is governed by other policies.
# GET  /types/{type_id}
# GET  /types
#"volume_extension:access_types_qos_specs_id": "rule:admin_api"


allow if {
  lib.admin_api
}

