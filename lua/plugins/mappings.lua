return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["<leader>lc"] = { "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch source header with clangd" },
          [";"] = { ":", desc = "Shift is hard" },
          ["H"] = {
            function() require("astrocore.buffer").nav(1) end,
            desc = "Previous buffer",
          },
          ["L"] = {
            function() require("astrocore.buffer").nav(-1) end,
            desc = "Next buffer",
          },
          ["<leader>h"] = {
            vim.cmd.noh,
            desc = "Turn off highlight",
          },
        },
        v = {
          [";"] = { ":", desc = "Shift is hard" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
