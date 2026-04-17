package create_agent

import data.neutron_lib

# Create an agent
# POST  /agents/{id}
# Intended scope(s): project
# Target attrs: admin_state_up, agent_type, alive, availability_zone, binary, configurations, created_at, description, domain_id, heartbeat_timestamp, host, id, resources_synced, started_at, topic
# "create_agent": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
