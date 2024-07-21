local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
      }
    }
  },

  {
    "nvim-treesitter/nvim-treesitter",
     opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "dfendr/clipboard-image.nvim",
     lazy = false,
     config = function()
      require("clipboard-image").setup {
        default = {
            markdown = {
              img_dir = {"src", "assets", "img"},
              img_dir_txt = "/assets/img",
            }
        }
      }
     end,
  },
{
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},
{
  "folke/neodev.nvim",
   opts = {}
},
{
  "lervag/vimtex",
   ft = 'tex',
   config = function()
      vim.g.vimtex_view_method = 'skim'
      vim.g.vimtex_view_method = 'zathura'
   end,
   lazy = false
},
{
  "simrat39/rust-tools.nvim",
   config = function() 
        require "custom.configs.rust-tools"

        local rt = require("rust-tools")

        rt.setup({
          server = {
            on_attach = function(_, bufnr)
              vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
              vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })

            end,
          },
        })

   end,
   lazy = false
},

{
  "nvim-lua/plenary.nvim",
  lazy=false
},
{
  "mfussenegger/nvim-dap"
},
{ "kkoomen/vim-doge",
  run = ":call doge#install()",
  config = function()
      vim.g.doge_enable_mappings = 1
      vim.g.doge_mapping = "<Leader>d"
  end,
  lazy = false,
},

{
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    {
      -- snippet plugin
      "L3MON4D3/LuaSnip",
      dependencies = "rafamadriz/friendly-snippets",
      opts = { history = true, updateevents = "TextChanged,TextChangedI" },
      config = function(_, opts)
        require("plugins.configs.others").luasnip(opts)
      end,
    },

    -- autopairing of (){}[] etc
    {
      "windwp/nvim-autopairs",
      opts = {
        fast_wrap = {},
        disable_filetype = { "TelescopePrompt", "vim" },
      },
      config = function(_, opts)
        require("nvim-autopairs").setup(opts)

        -- setup cmp for autopairs
        local cmp_autopairs = require "nvim-autopairs.completion.cmp"
        require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
      end,
    },

    -- cmp sources plugins
    {
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
  },

  opts = function()
    require "plugins.configs.cmp"
    require "custom.configs.cmp"
  end,
  config = function(_, opts)
    require("cmp").setup(opts)
  end,
},

{
    "xiyaowong/transparent.nvim",
    lazy = false
},

{
    'mfussenegger/nvim-dap',
    lazy = false,
    config = function()
      require("custom.configs.dap")
    end
},
{
    'nvim-lua/plenary.nvim'
},

{ "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
},
{
  "folke/noice.nvim",
  event = "VeryLazy",
  config = function ()
      require("custom.configs.noice")
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    }
},
-- {
--   'mrcjkb/rustaceanvim',
--   version = '^4', -- Recommended
--   lazy = false, -- This plugin is already lazy
--   config = function()
--       require("custom.configs.rustaceanvim")
--   end,
-- }
}

return plugins
