local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config

   local servers = { "html", "cssls", "pyright", "tsserver" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         -- root_dir = vim.loop.cwd,
         flags = {
            debounce_text_changes = 150,
         },
      }
   end

   -- typescript

   -- lspconfig.tsserver.setup {
   --     cmd = { "typescript-language-server", "--stdio" },
   --     filetypes = {"typescriptreact", "typescript.tsx"},
   --     root_dir = root_pattern("package.json", "tsconfig.json")
   --   }
end

return M