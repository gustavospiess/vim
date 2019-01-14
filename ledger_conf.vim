"                           Ledger Configurations
" ------------------------------------------------------------------------- "
    augroup LedgerFileype
      autocmd!
      autocmd BufEnter *.ledger set filetype=ledger
      autocmd BufEnter *.ledger set spell
    augroup END
