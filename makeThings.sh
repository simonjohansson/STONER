#!/usr/bin/env bash

echo Making stl, this will take a while.

set -x
openscad -o things/v1_left.stl v1_left.scad
openscad -o things/v1_bottom_left.stl v1_bottom_left.scad
openscad -o things/v1_right.stl v1_right.scad
openscad -o things/v1_bottom_right.stl v1_bottom_right.scad
