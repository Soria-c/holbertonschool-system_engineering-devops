# Puppet script to kill a process

exec {'pkill':
    command => ['/usr/local/bin/pkill', 'killmenow'],
}
