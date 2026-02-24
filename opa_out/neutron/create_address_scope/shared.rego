package create_address_scope.shared

import data.lib

# Create a shared address scope
# POST  /address-scopes
# Intended scope(s): project
#"create_address_scope:shared": "rule:admin_only"


allow if {
  lib.admin_only
}

