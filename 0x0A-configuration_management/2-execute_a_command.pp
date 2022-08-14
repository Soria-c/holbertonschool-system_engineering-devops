# Puppet script to kill a process

exec {'pkill':
    command => ['/bin/pkill', 'killmenow'],
    user    => 'root',
}