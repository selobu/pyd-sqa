#!/bin/sh -e
set -x

# Sort imports one per line, so autoflake can remove unused imports
isort --recursive  --force-single-line-imports --thirdparty pyd_sqa --apply ./pyd_sqa ./tests
sh ./scripts/format.sh
