return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = "*",
    build = ":TSUpdate",
    init = function()
      local parser_path = vim.fn.stdpath("data") .. "/site"
      vim.fn.mkdir(parser_path .. "/parser", "p")
      vim.opt.runtimepath:prepend(parser_path)
    end,
    opts = {
      ensure_installed = {
        "c", "cpp", "lua", "vim", "vimdoc",
        "html", "css", "php", "javascript",
        "typescript", "python", "twig"
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    },
    config = function(_, opts)
      local status_ok, configs = pcall(require, "nvim-treesitter.configs")
      if not status_ok then return end

      opts.parser_install_dir = vim.fn.stdpath("data") .. "/site"
      configs.setup(opts)
    end,
  }
}
