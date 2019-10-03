#!/bin/bash
#########################################################################
sudo virt-install --debug \
--connect qemu:///system \
--name virt-test \
--memory 2048 \
--disk path=/depot/KVM_Guests/virt-test.qcow2,size=8 \
--vcpus 1 \
--os-variant centos6.10 \
--network network=default \
--virt-type kvm \
--os-type linux \
--graphics vnc \
--os-variant centos6.10 \
--location "http://192.168.122.1:8000/centos/" \
--extra-args "ks=http://192.168.122.1:8000/ks.cfg  ip=dhcp"
