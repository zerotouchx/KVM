#!/bin/bash
#########################################################################
sudo virt-install --debug \
--connect qemu:///system \
--name centos7-test \
--memory 2048 \
--disk path=/depot/KVM_Guests/centos7-test.qcow2,size=8 \
--vcpus 1 \
--os-variant generic \
--network network=default \
--virt-type kvm \
--os-type linux \
--graphics none \
--location "http://192.168.122.1:8000/centos7/" \
--extra-args "ks=http://192.168.122.1:8000/ks7.cfg  ip=dhcp console=ttyS0"
