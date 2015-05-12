#!/bin/bash

/bin/bash /etc/init.d/sensu-service $COMPONENT start

exec tail -F /var/log/sensu/sensu-$COMPONENT.log
