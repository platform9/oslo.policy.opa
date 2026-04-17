package get_log

import data.neutron_lib

# Get a network log
# GET  /log/logs
# GET  /log/logs/{id}
# Intended scope(s): project
# Target attrs: domain_id, enabled, event, id, name, project_id, resource_id, resource_type, target_id
# "get_log": "(rule:admin_only) or (role:manager and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	manager_and_creds_project_id_eq_input_project_id
}

# (role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
	"manager" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
