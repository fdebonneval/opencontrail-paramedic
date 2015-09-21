#!/bin/bash

apt-get install -y git curl htop
#git clone https://github.com/Juniper/contrail-installer.git
#cd contrail-installer
#cp samples/localrc-all localrc
#sed -i \
#    -e "s#\# CONTRAIL_REPO_PROTO=https#CONTRAIL_REPO_PROTO=https#g" \
#    -e "s#\# LAUNCHPAD_BRANCH=mainline#LAUNCHPAD_BRANCH=R2.0#g" \
#    -e "s#\# CONTRAIL_REPO_PROTO=https#CONTRAIL_REPO_PROTO=https#g" \
#    localrc

#INSTALL_PROFILE=COMPUTE
#CONTRAIL_DEFAULT_INSTALL=True

#./contrail.sh build && \
#./contrail.sh install && \
#./contrail.sh configure && \
#./contrail.sh start
