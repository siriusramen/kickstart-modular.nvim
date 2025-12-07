return {
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require('everforest').setup {}
      vim.cmd.colorscheme 'everforest'
    end,
  },
  { 'rebelot/kanagawa.nvim', lazy = true },
  { 'ellisonleao/gruvbox.nvim', lazy = true },
  { 'catppuccin/nvim', name = 'catppuccin', lazy = true },
  { 'rose-pine/neovim', name = 'rose-pine', lazy = true },
  { 'rktjmp/lush.nvim', name = 'lush', lazy = true },
  { 'ramojus/mellifluous.nvim', name = 'mellifluous', lazy = true },
  { 'tiagovla/tokyodark.nvim', name = 'tokyodark', lazy = true },
  { 'dgox16/oldworld.nvim', lazy = true },
  { 'ficcdaf/ashen.nvim', lazy = true },
}
