# tenprint-alpha-nvim

A plugin patch that replaces the [alpha-nvim](https://github.com/goolord/alpha-nvim) dashboard header with a randomised [10PRINT](https://10print.org/)-style banner. Built for [LazyVim](https://github.com/LazyVim/LazyVim), but works in any Alpha setup.

> [!NOTE]
> This is a patch for [alpha.nvim](https://github.com/goolord/alpha-nvim) It assumes you're using that plugin and won't do anything without it.

## Installation

If you're using LazyVim, add this plugin like so:

```lua
-- ~/.config/nvim/lua/plugins/10print.lua
return {
  { import = "10print_alpha" },
}
```

### (Optional:) Customisation

To change the shape set or dimensions:

```lua
{
  "goolord/alpha-nvim",
  opts = function(_, opts)
    opts.section.header.val = require("10print_alpha.banner").generate_banner({
      shapes = "angles", -- other options: "lines", "blocks", "corners", etc.
      width = 80, --default: 70
      rows = 10, -- default: 7
    })
  end,
}
```

### Available Shape Sets

```lua
pipes = { "╭", "╮", "╯", "╰", "┼", "─", "│" },
triangles = { "◢", "◣", "◤", "◥" },
blocks = { "█", "▓", "▒", "░" },
corners = { "𜸢", "𜸪", "𜸫", "𜸬", "𜸸", "𜸻" },
angles = { "┼", "─", "│", "┌", "┐", "┘", "└" },
lines = { "╱", "╳", "╲" },
```
