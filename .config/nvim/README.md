# Neovim Configuration

## Option setting

The environment options is defined in ./lua/option.lua

## Keymaps

TODO: HAHA

## Lazy

A plugin manager of neovim. Allow user to configure plugin including the when to launch.
Use :Lazy can see all your plugin's status. Type g? in Lazy menu can see how to operate.

## Plugin

### Already installed

**autopairs**
Actually I never use it. But it seems very powerful.

**beacon**
Blink a while on where your cursor jump to. It's really useful.

**colorscheme.lua**
Find your favorite scheme and put it here.

**comment**
Detect filetype and decide how to comment a line. Really useful.

**illuminate**
Use key stroke to jump to next/previous the variable which is same as under the cursor.
Powered by Treesitter or Lsp.

**indent-o-matic**
This plugin is really useful when you encounter a whole mess of indent. It will decided
how many space is the indent when we enter a buffer.
It'll set to tab if it find there is any tab in range.

**lsp**
Configure your lsp server in lsp.lua. It will iterate the list in utils/init.lua and configure LSP server automatically.

**lspui**
Better LSP UI

**lualine**
Better neovim status line. Show some information about file and neovim status.
More useful than bufferline.

**mason**
LSP server manager. Type :Mason and you can manage all your LSP status.

**oil**
Oil\~ Best file explorer in neovim. The best!

**tmux**
Allow you navigate between tmux and neovim with the same key stroke.
Need to configure both tmux and neovim. See the git page and follow.

**treesitter-context**
Stink the function name on the top of windows.

**treesitter**
Neovim built-in AST(Abstract Syntax Tree). Provide basic highlight. There's a lot plugin based on AST.
Slow down.

**nvim-cmp**

**luasnip**

**telescope**
what the hell I forget this.

**telescope-project**

**colorize**

**autopair**

**gitsign**
## Not yet
**venn**

**ufo**

## Not found yet
set telescope root
