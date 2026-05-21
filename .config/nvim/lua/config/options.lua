-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guifont = "JetBrainsMono Nerd Font:h14"
vim.opt.guifont = "Maple Mono NF CN:h14"
vim.g.neovide_opacity = 0.9
vim.g.neovide_normal_opacity = 0.9

-- ==================== Neovide 粉色光标（最终强力版） ====================
if vim.g.neovide then
  -- 1. 创建自定义高亮组
  vim.api.nvim_set_hl(0, "CustomCursor", {
    fg = "#1e1e2e",
    bg = "#ffbbbd", -- 粉色
  })

  vim.api.nvim_set_hl(0, "CustomCursorIM", {
    fg = "#1e1e2e",
    bg = "#ffbdbd",
  })

  -- 2. 强制使用我们的高亮组（关键）
  vim.opt.guicursor = {
    "n-v-c-sm:block-CustomCursor",
    "i-ci-ve:ver25-CustomCursorIM",
    "r-cr-o:hor20-CustomCursorIM",
  }

  -- 3. 防止被后续主题覆盖
  vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
      vim.api.nvim_set_hl(0, "CustomCursor", {
        fg = "#1e1e2e",
        bg = "#ffbdbd",
      })
      vim.api.nvim_set_hl(0, "CustomCursorIM", {
        fg = "#1e1e2e",
        bg = "#ffbdbd",
      })
    end,
  })

  -- Neovide 其他设置
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_size = 2
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
