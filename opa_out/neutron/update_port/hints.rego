package update_port.hints

import data.lib

# Update ``hints`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:hints": "rule:admin_only"


allow if {
  lib.admin_only
}

