require("config.options")
require("config.lazy")
require("config.ufo")
require("config.debugging")
require("config.autocmds.restore-colorscheme")
require("config.autocmds.formatting")
require("config.autocmds.lsp-progress-notification")
require("config.autocmds.sort-barbar")

require("config.mappings")

require("lualine").setup()
require("mason").setup()
require("gitsigns").setup()
