# 🌛 LunarVim config

## 📁 Where to move this configuration

```sh
~/.config/lvim
```

## ⚙️ Notes about the layer installation

At this time, LunarVim launching does not work for the snap version of Neovim, unless if the
replacement below is carried out:
```sh
# replace the line below...
exec -a $NVIM_APPNAME nvim -u "$LUNARVIM_BASE_DIR/init.lua" "$@"
# ...by the following one:
exec \nvim -u "$LUNARVIM_BASE_DIR/init.lua" "$@"
```

We recall that lvim can be called by default for launching nvim or write git commits. Just write the
following lines in `~/.bashrc` or equivalent shell configuration file:
```sh
alias nvim=lvim
export EDITOR=lvim
```

## TODO:

- [] use external system language servers
    - [] Mason: disable automatic language server installation
    - [] Mason: remove installed language servers
    - [] install language servers externally
    - [] LspConfig: link the plugin to the installed language servers
- [] add discord presence
- [] add a Markdown/Latex previewer (see [Awesome
  Nvim](https://github.com/rockerBOO/awesome-neovim#markdown-and-latex))
- [] add a git diff viewer (see [Awesome Nvim *Git*
  section](https://github.com/rockerBOO/awesome-neovim#git))
- [] add a plugin for enhancing the clipboard management (see [Register
  section](https://github.com/rockerBOO/awesome-neovim#register))
- [] set a beautiful colorscheme (such as [catpuccin](https://github.com/catppuccin/nvim))
- [] there is interesting [deployment
  plugins](https://github.com/rockerBOO/awesome-neovim#deployment) for handling synchronisation of
  folders with a remote device (use rsync, ssh)
