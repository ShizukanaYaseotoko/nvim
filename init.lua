require("config.lazy")
require("config.mappings")

require("mason").setup()
require("persistence").load({ last = true })
