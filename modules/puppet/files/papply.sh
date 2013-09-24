#!/bin/sh
HOMEPATH="/home/logadmin"
sudo puppet apply $HOMEPATH/puppet/manifests/site.pp --modulepath=$HOMEPATH/puppet/modules/ $*
