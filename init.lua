local chad_modules = {
   "options",
   "mappings",
}
vim.g.python3_host_prog = "/home/le/virtualenv/nvim/bin/python3.9"
vim.g.loaded_python_provider = 0
for i = 1, #chad_modules, 1 do
   if not pcall(require, chad_modules[i]) then
      error("Error loading " .. chad_modules[i] .. "\n")
   end
end

require("mappings").misc()
