package volume_update_volume_admin_metadata_test

import data.volume.update_volume_admin_metadata

test_update_volume_admin_metadata_0 if update_volume_admin_metadata.allow with input as {"credentials": {"is_admin": true}}
test_update_volume_admin_metadata_1 if update_volume_admin_metadata.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
