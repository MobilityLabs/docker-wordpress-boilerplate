#!/bin/bash

# If you create a child theme, be sure to update this
pushd wp-content/themes/understrap

# Install node modules just in case
yarn

yarn gulp watch

popd
