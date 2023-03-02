#!/usr/bin/env bash

# rendering mechanism
render_template() {
  eval "echo \"$(cat ${1})\""
}

# generate the settings file from the template
render_template /omeka-s/config/database.ini.template > /var/www/html/config/database.ini
chown www-data:www-data /var/www/html/config/database.ini

#
# end of file
#
