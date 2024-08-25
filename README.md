# .config/nvim

## Introduction
This repository contains my nvim configs, personalized from [nvim-kickstart](https://github.com/nvim-lua/kickstart.nvim)

The folder structure:
```bash
$ tree
.
├── init.lua
├── lazy-lock.json
├── LICENSE.md
├── lua
│   ├── config
│   │   └── init.lua
│   ├── core
│   │   ├── init.lua
│   │   ├── options.lua
│   │   └── remaps.lua
│   └── plugins
│       ├── alpha-nvim.lua
│       ├── autopairs.lua
│       ├── cmp.lua
│       ├── gitsigns.lua
│       ├── init.lua
│       ├── lint.lua
│       ├── lsp.lua
│       ├── mini.lua
│       ├── neo-tree.lua
│       ├── nvim-tree.lua
│       ├── telescope.lua
│       ├── treesitter.lua
│       └── which-key.lua
├── README.md
```

## Installation
Make sure to install all dependencies listed [here](https://github.com/nvim-lua/kickstart.nvim), and then clone to the nvimv config directory:
```bash
$ git clone https://github.com/e3oroush/.config.nvim.git .config/nvim
```

## TODO
- [ ] Document the keymaps
- [ ] Add better integration for Python development
- [ ] Suppoprt different profiles for Python/Go... development
