package identity.ec2_create_credential

import data.lib

# Create ec2 credential.
# POST  /v3/users/{user_id}/credentials/OS-EC2
# Intended scope(s): system, project
#"identity:ec2_create_credential": "rule:admin_or_owner"


allow if {
  lib.admin_or_owner
}

