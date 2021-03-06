#!/bin/bash

KUBERNETES_DASHBOARD_ENABLED=true
JENKINS_ENABLED=true

# DO NOT Execute this script with sudo
if [ $SUDO_USER ]; then
    echo "Please DO NOT execute with sudo !!!    ./install-prereqs.sh"
    echo "Aborting!!!"
    exit 0
fi
./install_k8s_prereqs.sh
./install_kubespray.sh
sudo ./install_nfs.sh
./install_nfs_provisioner.sh
if [ "$KUBERNETES_DASHBOARD_ENABLED" == true ]
then
echo
echo "## Kubernetes Dashboard"
./install_k8s_dashboard.sh
fi
if [ "$JENKINS_ENABLED" == true ]
then
echo
echo "## Jenkins"
./install_jenkins.sh
fi

echo "====== Please Logout & Logback in ======"