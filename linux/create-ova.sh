#!/bin/bash

vagrant destroy -f
vagrant up
vagrant halt

VBoxManage sharedfolder remove "udesktop22-assessment" --name "vagrant"
VBoxManage sharedfolder remove "userver22-assessment" --name "vagrant"
VBoxManage modifyvm "udesktop22-assessment" --natpf1 delete "ssh"
VBoxManage modifyvm "userver22-assessment" --natpf1 delete "ssh"

echo "Exporting to .ova. This may take a while."
rm -f "./udesktop22-assessment.ova"
rm -f "./userver22-assessment.ova"
VBoxManage export "udesktop22-assessment" --output "./udesktop22-assessment.ova" --options nomacs
VBoxManage export "userver22-assessment" --output "./userver22-assessment.ova" --options nomacs

echo "Done!"
