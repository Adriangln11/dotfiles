return {
  --
  -- {
  --   "sainnhe/sonokai",
  --   config = function()
  --     vim.g.sonokai_transparent_background = "1"
  --     vim.g.sonokai_enable_italic = "1"
  --     vim.g.sonokai_style = "andromeda"
  --     vim.cmd.colorscheme("sonokai")
  --   end,
  -- },

  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads firstw
  --   config = function()
  --     require("onedarkpro").setup({
  --       colors = {},
  --       options = {
  --         transparency = true,
  --         cursorline = true,
  --       },
  --     })
  --     vim.cmd("colorscheme vaporwave")
  --   end,
  -- },
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "deep",
        transparent = false,
      })
      -- Enable theme
      require("onedark").load()
    end,
  },

  -- {
  --   "rmehri01/onenord.nvim",
  --   config = function()
  --     require("onenord").setup({})
  --     vim.cmd("colorscheme onenord")
  --   end,
  -- },

  -- {
  --   "Tsuzat/NeoSolarized.nvim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1001, -- make sure to load this before all the other start plugins
  --   config = function()
  --     vim.cmd([[ colorscheme NeoSolarized ]])
  --   end,
  -- },
}
