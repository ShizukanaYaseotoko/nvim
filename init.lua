require("config.options")
require("config.lazy")
require("config.autocmds.restore-colorscheme")
require("config.autocmds.format-on-write")
require("config.autocmds.lsp-progress-notification")
require("config.autocmds.sort-barbar")

require("config.mappings")

require("lualine").setup()
require("mason").setup()
require("lsp-auto-setup").setup()
require("gitsigns").setup()
