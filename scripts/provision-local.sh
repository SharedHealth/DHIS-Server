#!/bin/bash
#yum install -y http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm || true
#yum install -y https://github.com/SharedHealth/FreeSHR-SCM/raw/master/dist/shr_scm_utils-0.1-1.noarch.rpm || true
#yum install -y https://github.com/SharedHealth/FreeSHR-SCM/raw/master/dist/shr_scm-0.1-1.noarch.rpm || true

#Provision using ansible
sudo ansible-playbook  -i ../../FreeSHR-Playbooks/dhis2 ../../FreeSHR-Playbooks/bdshr-dhis.yml --skip-tags="application"