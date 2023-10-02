#!/bin/sh -e
set -x

autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place ./pyd_sqa ./tests --exclude=__init__.py
black ./pyd_sqa ./tests
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --thirdparty pyd_sqa --apply ./pyd_sqa ./tests
