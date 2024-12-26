return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local inlay_hints = opts.inlay_hints or {}
      inlay_hints.enabled = false
      opts.inlay_hints = inlay_hints

      local clangd_opts = opts.servers.clangd
        or {
          keys = {
            { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
          },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "Makefile",
              "configure.ac",
              "configure.in",
              "config.h.in",
              "meson.build",
              "meson_options.txt",
              "build.ninja"
            )(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(
              fname
            ) or require("lspconfig.util").find_git_ancestor(fname)
          end,
          capabilities = {
            offsetEncoding = { "utf-16" },
          },
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        }
      clangd_opts.cmd[1] = "/home/thormas/.guix-profile/bin/clangd"
      clangd_opts.mason = false
      opts.servers.clangd = clangd_opts
    end,
  },
}
