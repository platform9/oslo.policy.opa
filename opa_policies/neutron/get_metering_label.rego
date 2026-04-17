package get_metering_label

import data.neutron_lib

# Get a metering label
# GET  /metering/metering-labels
# GET  /metering/metering-labels/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, id, name, shared, tenant_id
# "get_metering_label": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
