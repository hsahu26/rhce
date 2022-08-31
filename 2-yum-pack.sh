#!/bin/bash
ansible -i inv dev -m yum_repository -a ' \
name=app \
baseurl=http://content.example.com/rhel8.0/x86_64/dvd/AppStream/ \
gpgkey=http://content.example.com/rhel8.0/x86_64/dvd/RPMGPG-KEY-redhat-release \
enabled=0 \
gpgcheck=0 \
description="The Description is Repo for appstream"' -b

####
ansible -i inv dev -m yum_repository -a ' \
name=base \
baseurl=http://content.example.com/rhel8.0/x86_64/dvd/AppStream/ \
gpgkey=http://content.example.com/rhel8.0/x86_64/dvd/RPMGPG-KEY-redhat-release \
enabled=0 \
gpgcheck=0 \
description="The Description is Repo for appstream"' -b
