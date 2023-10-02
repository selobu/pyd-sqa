#!/usr/bin/env bash

set -e
set -x

mypy pyd_sqa
black pyd_sqa tests --check
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --check-only --thirdparty pyd_sqa pyd_sqa tests
