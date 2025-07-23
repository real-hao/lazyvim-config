return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "TroubleToggle", "Trouble" },
  config = function()
    require("trouble").setup({
      auto_open = false,
      auto_close = true,
      use_diagnostic_signs = true,
    })
  end,
}
