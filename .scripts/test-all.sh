#!/bin/zsh
unset SPECULOS_DEBUG DEBUG_SCREENS
LEDGER_APP=build/nanos/bin/app.elf ./tests/node_modules/.bin/mocha tests/ --exit --require tests/hooks.js --config tests/.mocharc.js
