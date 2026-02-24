package activate

import data.lib

# Activate port binding on the host
# PUT  /ports/{port_id}/bindings/{host}
# Intended scope(s): project
#"activate": "rule:service_api"


allow if {
  lib.service_api
}

