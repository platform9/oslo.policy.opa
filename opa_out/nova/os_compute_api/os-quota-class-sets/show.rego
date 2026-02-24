package os_compute_api.os_quota_class_sets.show

import data.lib

# List quotas for specific quota classes
# GET  /os-quota-class-sets/{quota_class}
# Intended scope(s): project
#"os_compute_api:os-quota-class-sets:show": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

