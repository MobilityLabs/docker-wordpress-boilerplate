#!/bin/bash

# If you create a child theme, be sure to update this
pushd wp-content/themes/understrap

# Install node modules just in case
yarn

yarn gulp imagemin

yarn gulp scripts

yarn gulp scss-for-prod

popd

echo 'Production assets created'
