package create_port.hints

import data.lib

# Specify ``hints`` attribute when creating a port
# POST  /ports
# Intended scope(s): project
#"create_port:hints": "rule:admin_only"


allow if {
  lib.admin_only
}

