# Script that ensures a Python package is installed

package { 'flask=2.1.0':
    ensure   => 'installed',
    provider => 'pip3',
}
