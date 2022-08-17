# Puppet manifest to install nginx on ubuntu

package { 'nginx':
    ensure   => '1.18.0',
    provider => 'apt',
}

exec { 'port 80':
    command => "ufw allow 'Nginx HTTP'",
    user    => 'root',
    path    => '/usr/sbin/ufw',
}

file { 'index.nginx-debian.html':
    path    => '/var/www/html/index.nginx-debian.html',
    content => 'Hellow World',
}

file_line { 'redirection':
    path  => '/etc/nginx/sites-available/default',
    after => 'server_name _;',
    line  => '\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;\n\t}\n',
}

exec { 'start service':
    command => 'service nginx start',
    path    => '/usr/sbin/service',
    user    => 'root',
}
