package create_port.binding.profile

import data.lib

# Specify ``binding:profile`` attribute when creating a port
# POST  /ports
# Intended scope(s): project
#"create_port:binding:profile": "rule:service_api"


allow if {
  lib.service_api
}

