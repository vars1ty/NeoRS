-- Configures LSP Signature.
require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    hint_prefix = " ",
    handler_opts = {
      border = "rounded"
    }
  })
