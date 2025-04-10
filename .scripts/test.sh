#!/bin/zsh

# use source venv/bin/activate
# to enable speculos
export SPECULOS_DEBUG=1
export LEDGER_APP=build/nanos/bin/app.elf
./tests/node_modules/.bin/mocha tests/ --exit --require tests/hooks.js --config tests/.mocharc.js --grep "$@" 2>&1 | fgrep 'printf'

