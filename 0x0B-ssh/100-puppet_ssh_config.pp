#!/usr/bin/puppet/env puppet
# Script to modify the ssh_config file

file {'/etc/ssh/ssh_config':
    ensure => 'present',
}

file_line {'PasswordAuthentication':
    ensure => 'present',
    path => '/etc/ssh/ssh_config',
    match => '^PasswordAuthentication ?(:?yes|no)?'
    line => 'PasswordAuthentication no'
}

file_line {'Indentityfile':
    path => '/etc/ssh/ssh_config',
    line => 'IdentityFile ~/.ssh/school'
}
