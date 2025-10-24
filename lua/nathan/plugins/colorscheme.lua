return {
  "folke/tokyonight.nvim",
  priority = 1000, -- load this plugin before anything else
  config = function()
    require("tokyonight").setup({
      style = "storm",
      -- brighten up comments and line numbers a bit from defaults
      on_colors = function(colors)
        colors.comment = "#707baf" 
      end,
      on_highlights = function(highlights, colors)
        highlights.LineNrAbove.fg = "#565f89"
        highlights.LineNrBelow.fg = "#565f89"
      end
    })
    vim.cmd("colorscheme tokyonight") -- this is what actually sets tokyonight as the colorscheme
  end
}

