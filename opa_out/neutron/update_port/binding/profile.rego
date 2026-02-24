package update_port.binding.profile

import data.lib

# Update ``binding:profile`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:binding:profile": "rule:service_api"


allow if {
  lib.service_api
}

