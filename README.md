# marp-preview.nvim

This is a Neovim plugin for previewing markdown presentations using [Marp](https://marp.app/).

The plugin uses the current directory as input directory.

## Requirements

- [Marp CLI](https://github.com/marp-team/marp-cli)
- Node.js (if not bundled with Marp CLI)

## Install

Example with Lazy:
```lua
{ 'thmshmm/marp-preview.nvim' },
```

## Usage

With custom theme paths:
```lua
require('marp-preview').setup({
  themes = {
    '../themes/custom.css'
  }
})
```

With custom command and options:
```lua
require('marp-preview').setup({
  command = '/my/marp',
  options = {
    '--htlm',
  }
})
```

Set keymaps:
```lua
local marp = require('marp-preview')
vim.keymap.set('n', '<leader>sp', marp.toggle)
```
