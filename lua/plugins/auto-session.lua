return {
  'rmagatti/auto-session',
  lazy = false,

  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    auto_restore_last_session = true,
  }
}
