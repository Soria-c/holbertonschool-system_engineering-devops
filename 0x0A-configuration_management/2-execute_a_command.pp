# Puppet script to kill a process

exec {'pkill':
    command => ['pkill', 'killmenow'],
}