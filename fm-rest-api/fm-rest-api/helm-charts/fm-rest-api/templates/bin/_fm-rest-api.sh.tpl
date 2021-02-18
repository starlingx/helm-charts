#!/bin/bash

{{/*
#
# SPDX-License-Identifier: Apache-2.0
#
*/}}

set -ex

# The sed below considers that the password might have special chars on it, so get the whole string after "="
export SQL_CONNECTION=$(sed -n 's/^sql_connection=//p' /etc/fm/fm.conf)
echo $SQL_CONNECTION > /var/log/sql_connection
python /usr/local/bin/fm_db_sync_event_suppression.py $SQL_CONNECTION
python /var/lib/openstack/bin/fm-api --config-file /etc/fm/fm.conf
