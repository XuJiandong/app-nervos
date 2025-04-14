#!/bin/zsh
LEDGER_APP=build/nanos/bin/app.elf DEBUG_SCREENS=1 ./tests/node_modules/.bin/mocha tests/ --exit --require tests/hooks.js --config tests/.mocharc.js --grep "$@"
