#!/bin/bash
set -e

### Configuration ###

APP_DIR=/var/www/myapp
GIT_URL=git://github.com/myusername/myapp
RESTART_ARGS=

# Uncomment and modify the following if you installed Passenger from tarball
#export PATH=/path-to-passenger/bin:$PATH


### Automation steps ###

set -x

cd $APP_DIR/code
git pull

# Install dependencies
#...put your own instructions here...

# Restart app
passenger-config restart-app --ignore-app-not-running --ignore-passenger-not-running $RESTART_ARGS $APP_DIR/code

