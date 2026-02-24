package update_rbac_policy.target_project

import data.lib

# Update ``target_project`` attribute of an RBAC policy
# PUT  /rbac-policies/{id}
# Intended scope(s): project
#"update_rbac_policy:target_project": "rule:admin_only or not field:rbac_policy:target_project=*"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #not field:rbac_policy:target_project:*
not input.target.target_project == "*"
}

