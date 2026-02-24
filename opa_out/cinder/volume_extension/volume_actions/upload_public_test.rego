package volume_extension_volume_actions_upload_public_test

import data.volume_extension.volume_actions.upload_public

test_upload_public_0 if upload_public.allow with input as {"credentials": {"is_admin": true}}
test_upload_public_1 if upload_public.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
