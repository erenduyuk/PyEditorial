#!/bin/bash

cat <<EOF
[production]
ec2_prod ansible_host=$EC2_PRIVATE_IP_PROD ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa ansible_ssh_extra_args='-o StrictHostKeyChecking=no'

[production1]
ec2_prod1 ansible_host=$EC2_PRIVATE_IP_PROD1 ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa ansible_ssh_extra_args='-o StrictHostKeyChecking=no'

[test]
ec2_test ansible_host=$EC2_PRIVATE_IP_TEST ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa ansible_ssh_extra_args='-o StrictHostKeyChecking=no'
EOF
