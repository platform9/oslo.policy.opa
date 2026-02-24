package update_address_scope.shared

import data.lib

# Update ``shared`` attribute of an address scope
# PUT  /address-scopes/{id}
# Intended scope(s): project
#"update_address_scope:shared": "rule:admin_only"


allow if {
  lib.admin_only
}

