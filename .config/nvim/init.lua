-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local function fix_borders()
  local hl_groups = {
    "NormalFloat",
    "FloatBorder",
    "TelescopeBorder",
    "TelescopePromptBorder",
    "SagaBorder",
    "NoiceCmdlinePopupBorder",
  }
  for _, group in ipairs(hl_groups) do
    -- Esto pone el fondo transparente y el borde del color del texto
    vim.api.nvim_set_hl(0, group, { bg = "none", fg = "gray" })
  end
end

-- Ejecutarlo ahora y cada vez que cambies de tema
fix_borders()
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = fix_borders,
})
