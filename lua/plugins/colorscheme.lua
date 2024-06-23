return {
  -- specify the flavour for dark and light mode
  {
    "catppuccin",
    opts = {
      flavour = "auto",
      background = {
        dark = "mocha",
        light = "latte",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  -- Autoswitch between light and dark background mode
  {
    "JManch/sunset.nvim",
    dependencies = {
      {
        "catppuccin",
      },
    },
    lazy = false,
    priority = 1000,
    opts = {
      -- Bordeaux's coordinates
      latitude = 44.834999,
      longitude = -0.575490,
    },
  },
}
