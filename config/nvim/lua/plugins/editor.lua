return {
  { "lewis6991/gitsigns.nvim", config = true },
  { "numToStr/Comment.nvim", config = true },
  { 
    "windwp/nvim-autopairs", 
    event = "InsertEnter", 
    config = function()
      require("nvim-autopairs").setup({})
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end 
  },  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "folke/flash.nvim", event = "VeryLazy" },
  { "tpope/vim-sensible" },
  { "ellisonleao/gruvbox.nvim" },
  { "navarasu/onedark.nvim" },
  { "embark-theme/vim" },
  { "rktjmp/lush.nvim", lazy = false, priority = 1000 },
}
