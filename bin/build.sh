#!/usr/bin/env bash

set -e

# Get repo root by sub-shelling and getting the parent directory of this script
DIR=$( cd $(dirname $0)/.. && pwd )

pushd $DIR/examples

echo "pwd"
pwd

echo "ls"
ls

elm make simple/simple.elm --output simple/elm.js
elm make shapes/shapes.elm --output shapes/elm.js
elm make physics/physics.elm --output physics/elm.js
popd
