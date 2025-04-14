#!/bin/zsh

SPECULOS_DEBUG=1 LEDGER_APP=build/nanos/bin/app.elf ./tests/node_modules/.bin/mocha tests/ --exit --require tests/hooks.js --config tests/.mocharc.js --grep "$@"
