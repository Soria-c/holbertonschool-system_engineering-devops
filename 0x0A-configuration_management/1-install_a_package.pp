# Script that ensures a Python package is installed

package { 'flask':
    ensure   => '2.1.0',
    provider => 'pip3',
}
