#!/bin/sh

spiff m main.yml \
    network.yml \
    secrets.yml \
    > bosh.yml
if [ $? -gt 0 ] ; then
    echo "Spiff Merge failed.  view errors and fix them"
else
    echo "bosh.yml generated.  Deploy using \"bosh-init deploy ./bosh.yml\""
fi

