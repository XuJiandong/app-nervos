#!/bin/zsh

# Start a new interactive Zsh shell and run commands within it
zsh -i -c '
  source ~/.nvm/nvm.sh      # ensure nvm is available
  nvm use 16
  source venv/bin/activate
  export SPECULOS_DEBUG=1
  export LEDGER_APP=build/nanos/bin/app.elf
  exec zsh                  # drop into the new shell with env applied
'

