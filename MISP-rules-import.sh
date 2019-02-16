#!/bin/bash
#
# MISP-rules-import.sh
#
# This will import the current IDS-approved rule set from MISP and save it in
# the local.rules file in a Security Onion environment running Suricata.
#
# Set up a Scheduled Task in MISP to periodically generate a fresh rule set.

/usr/bin/curl -o /etc/nsm/rules/local.rules -H "Authorization: APIKEYFORMISPGOESHERE" http://MISPSERVERIP/events/nids/suricata/download/

# Now update the rules in the running instance.

/bin/bash /usr/sbin/rule-update
