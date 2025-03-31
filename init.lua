require("config.options")
require("config.lazy")

require("config.mappings")

require("config.restore-colorscheme")
require("lualine").setup()
require("mason").setup()
require("lsp-auto-setup").setup()
