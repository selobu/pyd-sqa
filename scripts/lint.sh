#!/usr/bin/env bash

set -e
set -x

mypy pyd_sqa
black pyd_sqa tests --check
