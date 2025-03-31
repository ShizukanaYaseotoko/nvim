require("config.options")
require("config.lazy")

require("config.mappings")

require("config.autocmds.restore-colorscheme")
require("config.autocmds.format-on-write")
require("lualine").setup()
require("mason").setup()
require("lsp-auto-setup").setup()
